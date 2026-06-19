#tag Class
Protected Class Class_Storage_Base
	#tag Method, Flags = &h0
		Sub Constructor(dbBaseID As Integer)
		  If dbBaseID < 0 Then Return
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM storage WHERE id_item=? AND theType=?", dbBaseID, Integer( Ingredient.Types.Base ) )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      Amount = rs.Column( "theValue" ).DoubleValue
		      Unit = rs.Column( "theUnit" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Amount As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ID As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		Unit As String
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Amount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Unit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
