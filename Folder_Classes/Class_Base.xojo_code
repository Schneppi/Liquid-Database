#tag Class
Protected Class Class_Base
	#tag Method, Flags = &h0
		Sub Constructor(dbID As Integer)
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM bases WHERE id=?", dbID )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      mDistributor = -1
		      
		      ID = rs.Column( "id" ).IntegerValue
		      mName = rs.Column( "base_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mDescription = rs.Column( "base_description" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mShare_PG = rs.Column( "share_pg" ).DoubleValue
		      mShare_VG = rs.Column( "share_vg" ).DoubleValue
		      mShare_Water = rs.Column( "share_water" ).DoubleValue
		      mNicotine = rs.Column( "nicotine" ).DoubleValue
		      ChangedOn = rs.Column( "changed_on" ).DateTimeValue
		      mLogo = rs.Column( "image" ).PictureValue 
		      
		      rs = db.SelectSQL( "SELECT id_dealer FROM dealers_items WHERE id_item=? AND theType=?", ID, Integer( Ingredient.Types.Base ) )
		      If rs <> Nil And Not rs.AfterLastRow Then mDistributor = rs.Column( "id_dealer" ).IntegerValue
		      
		      Storage = New Class_Storage_Base(ID)
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Name As String)
		  Try
		    
		    db.ExecuteSQL( "INSERT INTO bases (base_name) VALUES (?)", Name.DefineEncoding( Encodings.UTF8 ) )
		    ChangedOn = DateTime.Now
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM bases ORDER BY id DESC LIMIT 1" )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      ID = rs.Column( "id" ).IntegerValue
		      mName = rs.Column( "base_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      
		      db.ExecuteSQL( "INSERT INTO storage (id_item,theType) VALUES (?,?)", ID, Integer( Ingredient.Types.Base ) )
		      db.ExecuteSQL( "INSERT INTO dealers_items (id_item,theType) VALUES (?,?)", ID, Integer( Ingredient.Types.Base ) )
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C69717569643D302C41726F6D613D312C426173653D32
		Function Remove() As Boolean
		  Try
		    
		    db.ExecuteSQL( "DELETE FROM bases WHERE id=?", ID )
		    db.ExecuteSQL( "DELETE FROM liquids_ingredients WHERE theIngredientID=? AND theType=1", ID )
		    db.ExecuteSQL( "DELETE FROM storage_base WHERE id_base=?", ID )
		    db.ExecuteSQL( "DELETE FROM dealer_base WHERE id_base=?", ID )
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateStorage(value As Double, unit As Integer) As Boolean
		  If ID < 0 Then Return False
		  
		  Try
		    
		    db.ExecuteSQL("UPDATE storage SET theValue=?, theUnit=? WHERE id_item=? AND theType=?", _
		    value, _
		    unit, _
		    ID, _
		    Integer( Ingredient.Types.Base ) )
		    
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
			    db.ExecuteSQL( "UPDATE bases SET base_description=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mDescription = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Description As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mDistributor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    db.ExecuteSQL( "UPDATE dealers_items SET id_dealer=? WHERE id_item=? AND theType=?",  value, ID, Integer( Ingredient.Types.Base ) )
			    mDistributor = value
			    
			  Catch err As DatabaseException
			    
			  End Try
			End Set
		#tag EndSetter
		Distributor As Integer
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
			      
			      db.ExecuteSQL( "UPDATE bases SET image=NULL, changed_on=? WHERE id=?", ChangedOn, ID )
			      
			    Else
			      
			      db.ExecuteSQL( "UPDATE bases SET image=?, changed_on=? WHERE id=?", value.ToData( Picture.Formats.PNG ), ChangedOn, ID )
			      
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
		Private mDistributor As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLogo As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mNicotine As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShare_PG As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShare_VG As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShare_Water As Double
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
			    db.ExecuteSQL( "UPDATE bases SET base_name=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
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
			  Return mNicotine
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE bases SET nicotine=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mNicotine = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Nicotine As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShare_PG
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE bases SET share_pg=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mShare_PG = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Share_PG As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShare_VG
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE bases SET share_vg=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mShare_VG = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Share_VG As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShare_Water
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    ChangedOn = DateTime.Now
			    db.ExecuteSQL( "UPDATE bases SET share_water=?, changed_on=? WHERE id=?", value, ChangedOn, ID )
			    mShare_Water = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Share_Water As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Storage As Class_Storage_Base
	#tag EndProperty


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
			Name="Distributor"
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
			InitialValue=""
			Type="Integer"
			EditorType=""
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
			Name="Nicotine"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Share_PG"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Share_VG"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Share_Water"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
