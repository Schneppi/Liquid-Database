#tag Class
Protected Class Class_Liquid
	#tag Method, Flags = &h0
		Function AddAroma(IngredientID As Integer, value As Double) As Boolean
		  Try
		    
		    db.ExecuteSQL( "INSERT INTO liquids_ingredients (theIngredientID,liquid_id,theValue,theType) VALUES (?,?,?,?)", _
		    IngredientID, _
		    ID, _
		    value, _
		    Integer( Ingredient.Types.Flavour ) )
		    
		    Flavours.Add IngredientID
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(dbID As Integer)
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM liquids WHERE id=?", dbID )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      ID = rs.Column( "id" ).IntegerValue
		      mName = rs.Column( "liquid_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mDescription = rs.Column( "liquid_description" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mRating = rs.Column( "liquid_rating" ).IntegerValue
		      mLogo = rs.Column( "image" ).PictureValue 
		      Changed = rs.Column("changed_on").DateTimeValue
		      
		    End If
		    
		    If ID > -1 Then
		      
		      rs = db.SelectSQL( "SELECT theIngredientID FROM liquids_ingredients WHERE liquid_id = ? AND theType=?", ID, Integer( Ingredient.Types.Flavour ) )
		      
		      If rs <> Nil And Not rs.AfterLastRow Then
		        
		        While Not rs.AfterLastRow
		          
		          
		          Flavours.Add rs.Column( "theIngredientID" ).IntegerValue
		          
		          rs.MoveToNextRow
		          
		        Wend
		        
		      End If
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Name As String)
		  Try
		    
		    db.ExecuteSQL( "INSERT INTO liquids (liquid_name) VALUES (?)", Name.DefineEncoding( Encodings.UTF8 ) )
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM liquids ORDER BY id DESC LIMIT 1" )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      ID = rs.Column( "id" ).IntegerValue
		      mName = rs.Column( "liquid_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      Changed = DateTime.Now
		      
		      db.ExecuteSQL( "INSERT INTO liquids_ingredients (liquid_id,theType) VALUES (?,?)", ID, Integer( Ingredient.Types.Base ) ) // Base
		      db.ExecuteSQL( "INSERT INTO liquids_ingredients (liquid_id,theType) VALUES (?,?)", ID, Integer( Ingredient.Types.Nicotin ) ) // Nikotin
		      db.ExecuteSQL( "INSERT INTO storage (id_item,theType) VALUES (?,?)", ID, Integer( Ingredient.Types.Liquid ) )
		      db.ExecuteSQL( "INSERT INTO dealers_items (id_item,theType) VALUES (?,?)", ID, Integer( Ingredient.Types.Liquid ) )
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C69717569643D302C41726F6D613D312C426173653D32
		Function Remove() As Boolean
		  Try
		    
		    db.ExecuteSQL( "DELETE FROM liquids WHERE id=?", ID )
		    db.ExecuteSQL( "DELETE FROM liquids_ingredients WHERE liquid_id=?", ID )
		    db.ExecuteSQL( "DELETE FROM storage WHERE id_item=? AND theType=?", ID, Integer( Ingredient.Types.Liquid ) )
		    db.ExecuteSQL( "DELETE FROM dealers_items WHERE id_item=? AND theType=?", ID, Integer( Ingredient.Types.Liquid ) )
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveIngredientWithID(IngredientID As Integer) As Boolean
		  Try
		    
		    db.ExecuteSQL( "DELETE FROM liquids_ingredients WHERE theIngredientID=? AND liquid_id=?", IngredientID, ID )
		    
		    Var X As Integer = Flavours.IndexOf( IngredientID )
		    If X > -1 Then Flavours.RemoveAt(X)
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateBase(IngredientID As Integer, theValue As Double)
		  If ID < 0 Then Return
		  
		  Try
		    
		    // Base
		    db.ExecuteSQL("UPDATE liquids_ingredients SET theIngredientID=?, theValue=? WHERE liquid_id=? And theType=?", _
		    IngredientID, _
		    theValue, _
		    ID, _
		    Integer( Ingredient.Types.Base ) )
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDealer(DealerID As Integer)
		  If ID < 0 Then Return
		  
		  Try
		    
		    // Dealer
		    db.ExecuteSQL("UPDATE dealers_items SET id_dealer=? WHERE id_item=? AND theType=?", _
		    DealerID, _
		    ID, _
		    Integer( Ingredient.Types.Liquid ) )
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateNicotine(value As Double)
		  Try
		    
		    // Nikotin
		    db.ExecuteSQL("UPDATE liquids_ingredients SET theValue=? WHERE liquid_id=? AND theType=?", _
		    value, _
		    ID, _
		    Integer( Ingredient.Types.Nicotin ) )
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateStorage(value As Double, unit As Integer) As Boolean
		  If ID < 0 Then Return False
		  
		  Try
		    
		    // Lager
		    db.ExecuteSQL("UPDATE storage SET theValue=?, theUnit=? WHERE id_item=? AND theType=?", _
		    value, _
		    unit, _
		    ID, _
		    Integer( Ingredient.Types.Liquid ) )
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    // MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Changed As DateTime
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mDescription
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE liquids SET liquid_description=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mDescription = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Description As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Flavours() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ID As Integer = -1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mLogo
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    If value = Nil Then
			      
			      db.ExecuteSQL( "UPDATE liquids SET image=NULL, changed_on=? WHERE id=?", Changed, ID )
			      
			    Else
			      
			      db.ExecuteSQL( "UPDATE liquids SET image=?, changed_on=? WHERE id=?", value.ToData( Picture.Formats.PNG ), Changed, ID )
			      
			    End If
			    
			    mLogo = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Logo As Picture
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mDescription As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLogo As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRating As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE liquids SET liquid_name=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mName = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Name As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mRating
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE liquids SET liquid_rating=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mRating = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Rating As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Logo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rating"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
