#tag Class
Protected Class Rating
Inherits DesktopCanvas
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  For Each oi As RatingImage In listObjectImage
		    
		    If oi.wasClicked(x,y) Then
		      selectedImageProcessing(oi)
		    End If
		  Next
		  
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #Pragma Unused areas
		  
		  if showFrame then drawFrame(g)
		  
		  for Each oi as RatingImage in listObjectImage
		    oi.draw(g)
		  next
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Clear()
		  ReDim listObjectImage(-1)
		  quantityOfImages = 0
		  showFrame = false
		  showBackground = false
		  
		  me.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Optional ImageCount As Integer = 5, Optional Frame As Boolean = False)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  quantityOfImages = ImageCount
		  showFrame = Frame
		  
		  imageEmpty = Star_Empty_24x24
		  imageHalf = Star_Half_24x24
		  imageFull = Star_Full_24x24
		  
		  createObjectsImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub createObjectsImage()
		  Dim space As Integer = 5
		  Dim lastRight As Integer
		  Me.Width = ((space + imageEmpty.Width) * quantityOfImages) + space
		  Me.Height = imageEmpty.Height + 8
		  
		  For i As Integer = 0 To quantityOfImages-1
		    Dim e As New RatingImage
		    e.image = imageEmpty
		    
		    If i = 0 Then
		      e.mLeft = space
		      lastRight = e.mLeft
		      
		    Else
		      e.mLeft = lastRight + space + e.image.Width
		      lastRight = e.mLeft
		      
		    End If
		    
		    e.mRight = e.mLeft + e.image.Width
		    e.mTop = (Me.Height - imageEmpty.Height) / 2
		    e.mBottom = e.mTop + e.image.Height
		    e.downValue = i + i + 1
		    e.highValue = i + i + 2
		    
		    listObjectImage.Add(e)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBackGround(g as Graphics)
		  g.DrawingColor = Color.FrameColor
		  g.FillRoundRectangle(0, 0, g.Width, g.Height, 10, 10)
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawFrame(g as Graphics)
		  g.DrawingColor = Color.RGB(0,0,0)
		  g.DrawRectangle(0, 0, Width-1, Height-1)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawImageEmptyForAll()
		  
		  for Each oi as RatingImage in listObjectImage
		    oi.image = imageEmpty
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub selectedImageProcessing(oi as RatingImage)
		  Select Case oi.image
		    
		  Case imageEmpty
		    
		    Rating = oi.downValue
		    
		  Case imageHalf
		    
		    
		    Rating = oi.highValue
		    
		    oi.fullImageWasShown = True
		    
		  Case imageFull
		    
		    If oi.fullImageWasShown Then
		      
		      Rating = oi.downValue - 1
		      oi.fullImageWasShown = False
		      
		    Else
		      
		      Rating = oi.downValue
		      
		    End If
		    
		  End Select
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event objectImageSelected(imageValue as Integer)
	#tag EndHook


	#tag Property, Flags = &h21
		Private imageEmpty As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private imageFull As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private imageHalf As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private listObjectImage() As RatingImage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRating As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private quantityOfImages As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mRating
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  drawImageEmptyForAll
			  
			  mRating = value
			  
			  For Each oi As RatingImage In listObjectImage
			    
			    Select Case mRating
			      
			    Case 0
			      
			      oi.image = imageEmpty
			      objectImageSelected( mRating )
			      Exit For
			      
			    Case oi.downValue
			      
			      oi.image = imageHalf
			      objectImageSelected( mRating )
			      Exit For
			      
			    Case oi.highValue
			      
			      oi.image = imageFull
			      objectImageSelected( mRating )
			      Exit For
			      
			    Else
			      
			      oi.image = imageFull
			      
			    End Select
			    
			  Next
			  
			  Me.Refresh
			  
			End Set
		#tag EndSetter
		Rating As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private showBackground As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private showFrame As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
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
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
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
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
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
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
