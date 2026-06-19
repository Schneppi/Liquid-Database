#tag Class
Protected Class Class_Dealer
	#tag Method, Flags = &h0
		Sub Constructor(dbID As Integer)
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM dealers WHERE id=?", dbID )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      ID = rs.Column( "id" ).IntegerValue
		      mName = rs.Column( "dealer_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mDescription = rs.Column( "dealer_description" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mAddress = rs.Column( "dealer_address" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mPhone = rs.Column( "dealer_phone" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mMail = rs.Column( "dealer_mail" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mURL = rs.Column( "dealer_url" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      mCustomerNumber = rs.Column( "customer_no" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      Changed = rs.Column( "changed_on" ).DateTimeValue
		      mLogo = rs.Column( "image" ).PictureValue 
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Name As String)
		  Try
		    
		    db.ExecuteSQL( "INSERT INTO dealers (dealer_name) VALUES (?)", Name.DefineEncoding( Encodings.UTF8 ) )
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM dealers ORDER BY id DESC LIMIT 1" )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      ID = rs.Column( "id" ).IntegerValue
		      mName = rs.Column( "dealer_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      
		      // db.ExecuteSQL( "INSERT INTO storage_base (id_base) VALUES (?)", ID )
		      // db.ExecuteSQL( "INSERT INTO dealer_base (id_base) VALUES (?)", ID )
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    ID = -1
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C69717569643D302C41726F6D613D312C426173653D32
		Function Remove() As Boolean
		  Try
		    
		    db.ExecuteSQL("DELETE FROM dealers WHERE id=?", ID)
		    
		    db.ExecuteSQL("DELETE FROM dealer_items WHERE id_dealer=?", ID )
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mAddress
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE dealers SET dealer_address=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mAddress = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Address As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Changed As DateTime
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCustomerNumber
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE dealers SET customer_no=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mCustomerNumber = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		CustomerNumber As String
	#tag EndComputedProperty

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
			    db.ExecuteSQL( "UPDATE dealers SET dealer_description=?, changed_on=? WHERE id=?", value, Changed, ID )
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
			    
			    Changed = DateTime.Now
			    
			    If value = Nil Then
			      
			      db.ExecuteSQL( "UPDATE dealers SET image=NULL, changed_on=? WHERE id=?", Changed, ID )
			      
			    Else
			      
			      db.ExecuteSQL( "UPDATE dealers SET image=?, changed_on=? WHERE id=?", value.ToData( Picture.Formats.PNG ), Changed, ID )
			      
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
		Private mAddress As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mMail
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE dealers SET dealer_mail=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mMail = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Mail As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mCustomerNumber As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDescription As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLogo As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMail As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPhone As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mURL As String
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
			    db.ExecuteSQL( "UPDATE dealers SET dealer_name=?, changed_on=? WHERE id=?", value, Changed, ID )
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
			  Return mPhone
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE dealers SET dealer_phone=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mPhone = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		Phone As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mURL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Try
			    
			    If value.Trim.Length > 0 And value.Trim.Left( 8 ) <> "https://" Then
			      
			      value = value.Replace( "http://", "" )
			      value = "https://" + value
			      
			    End If
			    
			    Changed = DateTime.Now
			    db.ExecuteSQL( "UPDATE dealers SET dealer_url=?, changed_on=? WHERE id=?", value, Changed, ID )
			    mURL = value
			    
			  Catch err As DatabaseException
			    
			    System.DebugLog( err.Message )
			    
			  End Try
			End Set
		#tag EndSetter
		URL As String
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
			Name="Address"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Mail"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Phone"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
