#tag Class
Protected Class Class_Dealer_Aroma
	#tag Method, Flags = &h0
		Sub Constructor(AromaID As Integer)
		  If AromaID = -1 Then Return
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM dealers_items WHERE id_item=? AND theType=?", AromaID, Integer( Ingredient.Types.Flavour ) )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      mDealer = rs.Column( "id_dealer" ).IntegerValue
		      mValue = rs.Column( "theValue" ).DoubleValue
		      Aroma = AromaID
		      
		    Else
		      
		      db.ExecuteSQL( "INSERT INTO dealers_items (id_item, id_dealer, theValue, theType) VALUES (?,?,?,?)", AromaID, -1, -1, Integer( Ingredient.Types.Flavour ) )
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove()
		  If Aroma = -1 Then Return
		  
		  Try
		    
		    db.ExecuteSQL( "DELETE FROM dealers_items WHERE id_item=? AND theType=?", Aroma, Integer( Ingredient.Types.Flavour ) )
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Aroma As Integer = -1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mDealer
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Aroma = -1 Then Return
			  
			  Try
			    
			    db.ExecuteSQL( "UPDATE dealers_items SET id_dealer=? WHERE id_item=? AND theType=?", value, Aroma, Integer( Ingredient.Types.Flavour ) )
			    mDealer = value
			    
			  Catch err As DatabaseException
			    
			  End Try
			End Set
		#tag EndSetter
		Dealer As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mDealer As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mValue As Double
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Aroma = -1 Then Return
			  
			  Try
			    
			    db.ExecuteSQL( "UPDATE dealers_items SET theValue=? WHERE id_item=? AND theType=?", value, Aroma, Integer( Ingredient.Types.Flavour ) )
			    mValue = value
			    
			  Catch err As DatabaseException
			    
			  End Try
			End Set
		#tag EndSetter
		Value As Double
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
			Name="Dealer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
