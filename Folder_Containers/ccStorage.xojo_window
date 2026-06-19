#tag DesktopWindow
Begin DesktopContainer ccStorage
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   400
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   False
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   460
   Begin DesktopLabel lblTitle
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kStorage"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   386
   End
   Begin DesktopSeparator sepTop
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   False
      Enabled         =   True
      Height          =   15
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   51
      Transparent     =   True
      Visible         =   True
      Width           =   420
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopListBox dvStorage
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   4
      ColumnWidths    =   "*,20%,20%,48"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   270
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#Module_Multilanguage.kItem	#Module_Multilanguage.kNumber	#Module_Multilanguage.kUnits	#Module_Multilanguage.kRating"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   1
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   78
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   420
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopButton btnRemoveFromStorage
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#Module_Multilanguage.kRemoveFromStorage"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   360
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   420
   End
   Begin DesktopButton btnHelp
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   ""
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   418
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   9
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   17
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub ShowStorage()
		  // Bis Jim den Fehler unter Sierra beseitigt hat.
		  // dvStorage.ColumnAlignment(1) = piDogDataView.DataView.AlignRight
		  dvStorage.ColumnAlignmentAt( 1 ) = DesktopListBox.Alignments.Decimal
		  dvStorage.ColumnAlignmentOffsetAt( 1 ) = -20
		  
		  Var rs As RowSet
		  
		  Try
		    
		    // Liquids
		    rs = db.SelectSQL( "SELECT liquids.image,liquids.id,liquids.liquid_name, storage.theValue, liquids.liquid_rating, storage_units." + Module_Multilanguage.kSQLUnitsNameField + ",storage.id_item " + _
		    "FROM liquids " + _
		    "INNER JOIN storage ON liquids.id = storage.id_item " + _
		    "INNER JOIN storage_units  ON storage_units.id = storage.theUnit " + _
		    "WHERE storage.theValue > 0 " + _
		    "AND storage.theType=? " + _
		    "ORDER BY liquid_name", Ingredient.Types.Liquid )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      dvStorage.AddRow Module_Multilanguage.kLiquids
		      dvStorage.RowTagAt( dvStorage.LastAddedRowIndex ) = "FOLDER"
		      
		      While Not rs.AfterLastRow
		        
		        dvStorage.AddRow rs.Column( "liquid_name" ).StringValue.DefineEncoding( Encodings.UTF8 ), _
		        Format( rs.Column( "theValue" ).DoubleValue, "#.0#" ), _
		        rs.Column( Module_Multilanguage.kSQLUnitsNameField ).StringValue.DefineEncoding( Encodings.UTF8 ), _
		        " "
		        dvStorage.CellTagAt( dvStorage.LastAddedRowIndex, 3 ) = rs.Column( "liquid_rating" ).IntegerValue
		        
		        Var pRow As New Picture( dvStorage.RowHeight, dvStorage.RowHeight )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          
		        Else
		          
		          If Color.IsDarkMode Then
		            pRow.Graphics.ScaleToFit( Liquid_DarkMode )
		          Else
		            pRow.Graphics.ScaleToFit( Liquid_LightMode )
		          End If
		          
		        End If
		        
		        dvStorage.RowImageAt( dvStorage.LastAddedRowIndex ) = pRow
		        
		        dvStorage.CellTagAt( dvStorage.LastAddedRowIndex, 0 ) = Module_Multilanguage.kLiquids
		        dvStorage.RowTagAt( dvStorage.LastAddedRowIndex ) = rs.Column( "id_item" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    // Flavours
		    rs = db.SelectSQL( "SELECT flavors.image,flavors.id,flavors.flavor_name, storage.theValue, flavors.flavor_rating, storage_units." + Module_Multilanguage.kSQLUnitsNameField + ",storage.id_item " + _
		    "FROM flavors " + _
		    "INNER JOIN storage ON flavors.id = storage.id_item " + _
		    "INNER JOIN storage_units  ON storage_units.id = storage.theUnit " + _
		    "WHERE storage.theValue > 0 " + _
		    "AND storage.theType=? " + _
		    "ORDER BY flavor_name", Ingredient.Types.Flavour )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      dvStorage.AddRow Module_Multilanguage.kFlavors
		      dvStorage.RowTagAt( dvStorage.LastAddedRowIndex ) = "FOLDER"
		      
		      While Not rs.AfterLastRow
		        
		        dvStorage.AddRow rs.Column( "flavor_name" ).StringValue.DefineEncoding( Encodings.UTF8 ), _
		        Format( rs.Column( "theValue" ).DoubleValue, "#.0#" ), _
		        rs.Column( Module_Multilanguage.kSQLUnitsNameField ).StringValue.DefineEncoding( Encodings.UTF8 ), _
		        " "
		        dvStorage.CellTagAt( dvStorage.LastAddedRowIndex, 3 ) = rs.Column( "flavor_rating" ).IntegerValue
		        
		        Var pRow As New Picture( dvStorage.RowHeight, dvStorage.RowHeight )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          
		        Else
		          
		          If Color.IsDarkMode Then
		            pRow.Graphics.ScaleToFit( Liquid_DarkMode )
		          Else
		            pRow.Graphics.ScaleToFit( Liquid_LightMode )
		          End If
		          
		        End If
		        
		        dvStorage.RowImageAt( dvStorage.LastAddedRowIndex ) = pRow
		        
		        dvStorage.CellTagAt( dvStorage.LastAddedRowIndex, 0 ) = Module_Multilanguage.kFlavors
		        dvStorage.RowTagAt( dvStorage.LastAddedRowIndex ) = rs.Column( "id_item" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    // Bases
		    rs = db.SelectSQL( "SELECT bases.image,bases.id,bases.base_name, storage.theValue, storage_units." + Module_Multilanguage.kSQLUnitsNameField + ",storage.id_item " + _
		    "FROM bases " + _
		    "INNER JOIN storage ON bases.id = storage.id_item " + _
		    "INNER JOIN storage_units  ON storage_units.id = storage.theUnit " + _
		    "WHERE storage.theValue > 0 " + _
		    "AND storage.theType=? " + _
		    "ORDER BY base_name", Ingredient.Types.Base )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      dvStorage.AddRow Module_Multilanguage.kBases
		      dvStorage.RowTagAt( dvStorage.LastAddedRowIndex ) = "FOLDER"
		      
		      While Not rs.AfterLastRow
		        
		        dvStorage.AddRow rs.Column( "base_name" ).StringValue.DefineEncoding( Encodings.UTF8 ), _
		        Format( rs.Column( "theValue" ).DoubleValue, "#.0#" ), _
		        rs.Column( Module_Multilanguage.kSQLUnitsNameField ).StringValue.DefineEncoding( Encodings.UTF8 ), _
		        " "
		        // dvStorage.CellTagAt( dvStorage.LastAddedRowIndex, 3 ) = rs.Column( "base_rating" ).IntegerValue
		        
		        Var pRow As New Picture( dvStorage.RowHeight, dvStorage.RowHeight )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          
		        Else
		          
		          If Color.IsDarkMode Then
		            pRow.Graphics.ScaleToFit( Liquid_DarkMode )
		          Else
		            pRow.Graphics.ScaleToFit( Liquid_LightMode )
		          End If
		          
		        End If
		        
		        dvStorage.RowImageAt( dvStorage.LastAddedRowIndex ) = pRow
		        
		        dvStorage.CellTagAt( dvStorage.LastAddedRowIndex, 0 ) = Module_Multilanguage.kBases
		        dvStorage.RowTagAt( dvStorage.LastAddedRowIndex ) = rs.Column( "id_item" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events dvStorage
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  #If TargetMacOS
		    #pragma unused column
		  #EndIf
		  If row > -1 And row < Me.RowCount Then
		    
		    Dim s As String = Me.RowTagAt(row).StringValue
		    
		    If s = "FOLDER" Then
		      
		      'Me.RowHeight(row) = 22
		      If Color.IsDarkMode Then
		        g.DrawingColor = &c803F0200
		      Else
		        g.DrawingColor = &cFFCC6600
		      End If
		      g.FillRectangle(0,0,g.Width,g.Height)
		      
		      Return True
		      
		    End If
		    
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function PaintCellText(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  #Pragma unused x
		  #Pragma unused y
		  '#Pragma unused width
		  
		  If row > -1 And row < Me.RowCount Then
		    
		    If column = 3 Then
		      
		      If Me.CellTagAt(row, 3).IntegerValue > 0 Then
		        
		        Select Case Me.CellTagAt(row, 3).IntegerValue
		          
		        Case 1
		          
		          g.DrawPicture(Star_Half_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Half_24x24.Width,Star_Half_24x24.Height)
		          
		        Case 2
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          
		        Case 3
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Half_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Half_24x24.Width,Star_Half_24x24.Height)
		          
		        Case 4
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          
		        Case 5
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Half_24x24, 12,0,Me.RowHeight,Me.RowHeight,0,0,Star_Half_24x24.Width,Star_Half_24x24.Height)
		          
		        Case 6
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 12,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          
		        Case 7
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 12,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Half_24x24, 18,0,Me.RowHeight,Me.RowHeight,0,0,Star_Half_24x24.Width,Star_Half_24x24.Height)
		          
		        Case 8
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 12,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 18,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          
		        Case 9
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 12,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 18,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Half_24x24, 24,0,Me.RowHeight,Me.RowHeight,0,0,Star_Half_24x24.Width,Star_Half_24x24.Height)
		          
		        Case 10
		          
		          g.DrawPicture(Star_Full_24x24, 0,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 6,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 12,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 18,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          g.DrawPicture(Star_Full_24x24, 24,0,Me.RowHeight,Me.RowHeight,0,0,Star_Full_24x24.Width,Star_Full_24x24.Height)
		          
		        End Select
		        
		        Return True
		        
		      End If
		      
		    End If
		    
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  If Me.SelectedRowCount > 0 Then
		    btnRemoveFromStorage.Enabled = True
		  Else
		    btnRemoveFromStorage.Enabled = False
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoublePressed()
		  Var row As Integer = Me.SelectedRowIndex
		  
		  If row > -1 And row < Me.RowCount Then
		    
		    If Me.RowTagAt(row).StringValue <> "FOLDER" Then
		      
		      Select Case Me.CellTagAt(row, 0)
		        
		      Case Module_Multilanguage.kLiquids
		        
		        Window_Main.PushTheButton(Module_Multilanguage.kLiquids)
		        
		      Case Module_Multilanguage.kFlavors
		        
		        Window_Main.PushTheButton(Module_Multilanguage.kFlavors)
		        
		      Case Module_Multilanguage.kBases
		        
		        Window_Main.PushTheButton(Module_Multilanguage.kBases)
		        
		      End Select
		      
		      Window_Main.LoadList
		      Window_Main.Main_Listbox.ScrollToID( Me.RowTagAt( row ).IntegerValue )
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRemoveFromStorage
	#tag Event
		Sub Pressed()
		  If dvStorage.RowCount > 0 Then
		    
		    If dvStorage.SelectedRowCount > 0 Then
		      
		      If MesBox( Module_Multilanguage.kQuestionRemoveFromStorage ) = 6 Then
		        
		        Var X, Y As Integer
		        Y = dvStorage.RowCount - 1
		        
		        For X = Y DownTo 0
		          
		          If dvStorage.CellTagAt( X, 0 ) <> "FOLDER" Then
		            
		            If dvStorage.RowSelectedAt( X ) = True Then
		              
		              If RemoveFromStorage( dvStorage.CellTagAt( X, 0 ).StringValue, dvStorage.RowTagAt( X ).StringValue ) Then
		                
		                dvStorage.RemoveRowAt( X )
		                
		              End If
		              
		            End If
		            
		          End If
		          
		        Next
		        
		      End If
		      
		    End If
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnHelp
	#tag Event
		Sub Pressed()
		  ShowHelp
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Window Behavior"
		InitialValue="False"
		Type="Boolean"
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
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
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
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
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
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue=""
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
		InitialValue=""
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
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
