#tag Class
Protected Class RatingImage
	#tag Method, Flags = &h0
		Sub draw(g as Graphics)
		  g.DrawPicture(image, mLeft, mTop)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function wasClicked(tmpX as Integer, tmpY as Integer) As Boolean
		  if tmpX >= self.mLeft and tmpX <= Self.mRight and tmpY >= mTop and tmpY <= Self.mBottom then
		    Return true
		  end if
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		downValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		fullImageWasShown As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		highValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		image As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		mBottom As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mRight As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mTop As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="downValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fullImageWasShown"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="highValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="image"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mBottom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mRight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mTop"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
