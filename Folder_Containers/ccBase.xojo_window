#tag DesktopWindow
Begin DesktopContainer ccBase
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   False
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
   Begin DesktopCanvas cnvImage
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   100
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   340
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   280
      Transparent     =   True
      Visible         =   True
      Width           =   100
      Begin DeleteButton btnDelete
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cnvImage"
         Left            =   418
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   358
         Transparent     =   True
         Visible         =   False
         Width           =   22
      End
   End
   Begin DesktopLabel lblName
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kName"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   21
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopTextField txtName
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   172
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   234
   End
   Begin DesktopLabel lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kDescription"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   313
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopTextArea txtDescription
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   68
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   172
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   312
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   156
   End
   Begin DesktopLabel lblDealer
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kDealer"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   280
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppmDealer
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   172
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   -1
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   280
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   122
   End
   Begin DesktopLabel LabelShare
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kSharePG"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   53
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   308
   End
   Begin ValueField txtSharePG
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   340
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel LabelShare
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kShareVG"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   85
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   308
   End
   Begin ValueField txtShareVG
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   340
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel LabelShare
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kShareWater"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   117
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   308
   End
   Begin DesktopLabel LabelNicotine
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kNicotin"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   149
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   308
   End
   Begin ValueField txtShareWater
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   340
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin ValueField txtNicotine
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   340
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   148
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   100
   End
   Begin StorageValue Storage
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      Composited      =   False
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   244
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   181
      Transparent     =   True
      Visible         =   True
      Width           =   196
   End
   Begin DesktopLabel lblStorage
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kInStorage"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   181
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   212
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
   Begin DesktopBevelButton btnDealer
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowTabStop    =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   0
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "🛍️"
      CaptionAlignment=   0
      CaptionDelta    =   0
      CaptionPosition =   0
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   20
      Icon            =   0
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   306
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   279
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   23
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Clear()
		  Base = Nil
		  
		  cnvImage.Refresh
		  
		  txtName.Text = ""
		  txtSharePG.Text = Format( 0, "#.00" )
		  txtShareVG.Text = Format( 0, "#.00" )
		  txtShareWater.Text = Format( 0, "#.00" )
		  txtNicotine.Text = Format( 0, "#.00" )
		  txtDescription.Text = ""
		  Storage.Amount.Text = Format( 0, "#.00" )
		  Storage.Units.List_Units
		  
		  ppmDealer.List_Dealers
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBase(dbID As Integer)
		  UIState( False )
		  
		  Base = New Class_Base( dbID )
		  
		  If Base.ID < 0 Then Return
		  
		  txtName.Text = Base.Name
		  txtDescription.Text = Base.Description
		  txtSharePG.Text = Base.Share_PG.ToString
		  txtShareVG.Text = Base.Share_VG.ToString
		  txtShareWater.Text = Base.Share_Water.ToString
		  txtNicotine.Text = Base.Nicotine.ToString
		  
		  ppmDealer.ListIndexFromRowTag( Base.Distributor )
		  
		  Storage.Amount.Text = Format( Base.Storage.Amount, "#.0#" )
		  Storage.Units.ListIndexFromRowTag( Base.Storage.Unit )
		  
		  UIState( True )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UIState(EnableAll As Boolean)
		  txtName.Enabled = EnableAll
		  txtNicotine.Enabled = EnableAll
		  txtSharePG.Enabled = EnableAll
		  txtShareVG.Enabled = EnableAll
		  txtShareWater.Enabled = EnableAll
		  ppmDealer.Enabled = EnableAll
		  txtDescription.Enabled = EnableAll
		  Storage.Amount.Enabled = EnableAll
		  Storage.Units.Enabled = EnableAll
		  
		  If EnableAll = False Then
		    
		    Clear
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateValues()
		  If Base.ID < 0 Then Return
		  
		  Try
		    
		    Base.ChangedOn = DateTime.Now
		    db.ExecuteSQL("UPDATE bases SET base_description=?, share_pg=?, share_vg=?, share_water=?, nicotine=?, changed_on=? WHERE id=?", _
		    txtDescription.Text.Trim, _
		    CDbl(txtSharePG.Text), _
		    CDbl(txtShareVG.Text), _
		    CDbl(txtShareWater.Text), _
		    CDbl( txtNicotine.Text ), _
		    Base.ChangedOn, _
		    Base.ID )
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Base As Class_Base
	#tag EndProperty


#tag EndWindowCode

#tag Events cnvImage
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #If TargetMacOS
		    #pragma unused areas
		  #EndIf
		  g.ClearRectangle(0,0,100,100)
		  
		  If Base <> Nil And Base.Logo <> Nil Then
		    
		    g.ScaleToFit(Base.Logo)
		    
		  Else
		    
		    Dim s(-1) As String = Module_Multilanguage.kDropImageHere.Split(" ")
		    Dim Mittig As Integer
		    
		    For X As Integer = 0 To s.LastIndex
		      
		      If Color.IsDarkMode Then
		        g.DrawingColor = &cFEFEFE00
		      Else
		        g.DrawingColor = &c00000000
		      End If
		      
		      g.DrawRoundRectangle(0,0,g.Width,g.Height,5,5)
		      
		      g.FontSize = 24
		      Mittig = ( g.Width/2 ) - ( g.TextWidth( s(x) )/2 )
		      
		      g.DrawText( s(x), Mittig, (x*24) + 30,100)
		      
		    Next
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  #Pragma Unused action
		  If Base = Nil Then Return
		  
		  If Me.Enabled Then
		    
		    If obj.PictureAvailable Or obj.FolderItemAvailable Then
		      
		      Var tempPic As Picture
		      If obj.FolderItemAvailable Then
		        
		        If obj.FolderItem.Type <> "" Then
		          
		          tempPic = Picture.Open( obj.FolderItem )
		          
		        Else
		          
		          MessageDialog.Show( Module_Multilanguage.kUnsupportedFileType )
		          
		          Return
		          
		        End If
		        
		      Else
		        
		        tempPic = obj.Picture
		        
		      End If
		      
		      Base.Logo = tempPic
		      
		      Me.Refresh
		      
		      If Base.Logo <> Nil Then
		        
		        Var pRow As New Picture( Window_Main.Main_Listbox.RowHeight, Window_Main.Main_Listbox.RowHeight )
		        pRow.Graphics.ScaleToFit( Base.Logo )
		        
		        If Window_Main.Main_Listbox.SelectedRowIndex > -1 Then
		          
		          Window_Main.Main_Listbox.RowImageAt( Window_Main.Main_Listbox.SelectedRowIndex ) = pRow
		          
		        End If
		        
		      End If
		      
		    End If
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  If Base <> Nil And Base.Logo <> Nil Then
		    
		    btnDelete.Visible = True
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  btnDelete.Visible = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.AcceptPictureDrop
		  Me.AcceptFileDrop(ftImages.All)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDelete
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma Unused X
		  #Pragma Unused Y
		  
		  If Base = Nil Or Base.Logo = Nil Then Return False
		  If MesBox( Module_Multilanguage.kQuestionDeleteImage ) <> 6 Then Return False
		  
		  Try
		    
		    Base.Logo = Nil
		    
		    If Window_Main.Main_Listbox.SelectedRowIndex > -1 Then
		      
		      Var pRow As New Picture( Window_Main.Main_Listbox.RowHeight, Window_Main.Main_Listbox.RowHeight )
		      
		      If Color.IsDarkMode Then
		        pRow.Graphics.ScaleToFit( Base_DarkMode )
		      Else
		        pRow.Graphics.ScaleToFit( Base_LightMode )
		      End If
		      
		      If Window_Main.Main_Listbox.SelectedRowIndex > -1 Then
		        
		        Window_Main.Main_Listbox.RowImageAt( Window_Main.Main_Listbox.SelectedRowIndex ) = pRow
		        
		      End If
		      
		    End If
		    
		    cnvImage.Refresh
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblName
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtName
	#tag Event
		Sub FocusLost()
		  If Me.Enabled Then
		    
		    If Me.Text.Trim.Length > 0 Then
		      
		      Base.Name = Me.Text.Trim
		      Window_Main.Main_Listbox.SelectedRowText = Me.Text.Trim
		      
		    End If
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.Enabled Then
		    
		    Dim endEditKeys() As String = Array(Encodings.UTF8.Chr(9), Encodings.UTF8.Chr(3), Encodings.UTF8.Chr(13))
		    
		    If endEditKeys.IndexOf(key) > -1 Then
		      // endKey pressed !
		      
		      If Me.Text.Trim.Length = 0 Then
		        
		        MessageDialog.Show( Module_Multilanguage.kPleaseEnterName )
		        
		        Me.Text = Module_Multilanguage.kName
		        
		        Me.SetFocus
		        
		      Else
		        
		        Base.Name = Me.Text.Trim
		        Window_Main.Main_Listbox.SelectedRowText = Me.Text.Trim
		        
		      End If
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblDescription
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtDescription
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.Enabled Then
		    
		    Dim endEditKeys() As String = Array(Encodings.UTF8.Chr(9), Encodings.UTF8.Chr(3), Encodings.UTF8.Chr(13))
		    
		    If endEditKeys.IndexOf(key) > -1 Then
		      // endKey pressed !
		      
		      UpdateValues
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub FocusLost()
		  If Me.Enabled Then
		    
		    UpdateValues
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblDealer
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ppmDealer
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  #pragma unused item
		  
		  If Not Me.Enabled Then Return
		  If Me.SelectedRowIndex = DesktopPopupMenu.NoSelection Then Return
		  If Base = Nil Or Base.ID = -1 Then Return
		  
		  Base.Distributor = ppmDealer.RowTagAt(ppmDealer.SelectedRowIndex).IntegerValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LabelShare
	#tag Event
		Sub Opening(index as Integer)
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtSharePG
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.Enabled Then
		    
		    Dim endEditKeys() As String = Array(Encodings.UTF8.Chr(9), Encodings.UTF8.Chr(3), Encodings.UTF8.Chr(13))
		    
		    If endEditKeys.IndexOf(key) > -1 Then
		      // endKey pressed !
		      
		      Base.Share_PG = CDbl( Me.Text )
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  If Me.Enabled Then
		    
		    Base.Share_PG = CDbl( Me.Text )
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtShareVG
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.Enabled Then
		    
		    Dim endEditKeys() As String = Array(Encodings.UTF8.Chr(9), Encodings.UTF8.Chr(3), Encodings.UTF8.Chr(13))
		    
		    If endEditKeys.IndexOf(key) > -1 Then
		      // endKey pressed !
		      
		      Base.Share_VG = CDbl( Me.Text )
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  If Me.Enabled Then
		    
		    Base.Share_VG = CDbl( Me.Text )
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LabelNicotine
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtShareWater
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.Enabled Then
		    
		    Dim endEditKeys() As String = Array(Encodings.UTF8.Chr(9), Encodings.UTF8.Chr(3), Encodings.UTF8.Chr(13))
		    
		    If endEditKeys.IndexOf(key) > -1 Then
		      // endKey pressed !
		      
		      Base.Share_Water = CDbl( Me.Text )
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  If Me.Enabled Then
		    
		    Base.Share_Water = CDbl( Me.Text )
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtNicotine
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.Enabled Then
		    
		    Dim endEditKeys() As String = Array(Encodings.UTF8.Chr(9), Encodings.UTF8.Chr(3), Encodings.UTF8.Chr(13))
		    
		    If endEditKeys.IndexOf(key) > -1 Then
		      // endKey pressed !
		      
		      Base.Nicotine = CDbl( Me.Text )
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  If Me.Enabled Then
		    
		    Base.Nicotine = CDbl( Me.Text )
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblStorage
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
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
#tag Events btnDealer
	#tag Event
		Sub Pressed()
		  Window_Main.PushTheButton( Module_Multilanguage.kDealers )
		  Window_Main.LoadList
		  Window_Main.Main_Listbox.ScrollToID( ppmDealer.RowTagAt( ppmDealer.SelectedRowIndex ).IntegerValue )
		  
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
