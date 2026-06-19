#tag Class
Protected Class Class_Aroma
	#tag Method, Flags = &h0
		Sub Constructor(dbID As Integer)
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM flavors WHERE id=?", dbID )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      If Not rs.AfterLastRow Then
		        
		        ID = rs.Column( "id" ).IntegerValue
		        mName = rs.Column( "flavor_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        mDescription = rs.Column( "flavor_description" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        mMixingRatio = rs.Column( "mixing_ratio" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        mRipeTime = rs.Column( "ripe_time" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        mRating = rs.Column( "flavor_rating" ).IntegerValue
		        ChangedOn = rs.Column( "changed_on" ).DateTimeValue
		        mLogo = rs.Column( "image" ).PictureValue
		        
		        Dealer = New Class_Dealer_Aroma(ID)
		        
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
		    
		    db.ExecuteSQL("INSERT INTO flavors (flavor_name) VALUES (?)", Name.DefineEncoding( Encodings.UTF8 ))
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM flavors ORDER BY id DESC LIMIT 1" )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      If Not rs.AfterLastRow Then
		        
		        ID = rs.Column( "id" ).IntegerValue
		        mName = rs.Column( "flavor_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		      End If
		      
		      db.ExecuteSQL( "INSERT INTO storage (id_item,theType,theUnit,theValue) VALUES (?,?,-1,-1)", _
		      ID, _
		      Integer( Ingredient.Types.Flavour ) )
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C69717569643D302C41726F6D613D312C426173653D32
		Function Remove() As Boolean
		  Try
		    
		    db.ExecuteSQL( "DELETE FROM flavors WHERE id=?", ID )
		    db.ExecuteSQL( "DELETE FROM liquids_ingredients WHERE theIngredientID=? AND theType=?", ID, Integer( Ingredient.Types.Flavour ) )
		    db.ExecuteSQL( "DELETE FROM storage WHERE id_item=? AND theType=?", ID, Integer( Ingredient.Types.Flavour ) )
		    
		    Dealer.Remove
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateStorage(value As Double, unit As Integer) As Boolean
		  Try
		    
		    db.ExecuteSQL("UPDATE storage SET theValue=?, theUnit=? WHERE id_item=? AND theType=?", _
		    value, _
		    unit, _
		    ID, _
		    Integer( Ingredient.Types.Flavour ) )
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    // MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ChangedOn As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		Dealer As Class_Dealer_Aroma
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
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE flavors SET flavor_description=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mDescription = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Description As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ID As Integer
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
			    
			    ChangedOn = DateTime.Now
			    
			    If value = Nil Then
			      
			      db.ExecuteSQL( "UPDATE flavors SET image=NULL, changed_on=? WHERE id=?", ChangedOn, ID )
			      
			    Else
			      
			      db.ExecuteSQL( "UPDATE flavors SET image=?, changed_on=? WHERE id=?", value.ToData( Picture.Formats.PNG ), ChangedOn, ID )
			      
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mMixingRatio
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE flavors SET mixing_ratio=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mMixingRatio = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		MixingRatio As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mLogo As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMixingRatio As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRating As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRipeTime As String
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
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE flavors SET flavor_name=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
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
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE flavors SET flavor_rating=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mRating = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Rating As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mRipeTime
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE flavors SET ripe_time=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mRipeTime = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		RipeTime As String
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="MixingRatio"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="RipeTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
