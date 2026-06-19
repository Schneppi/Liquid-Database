#tag DesktopWindow
Begin DesktopContainer ccLiquid
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   False
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   500
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
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   380
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
         Top             =   458
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
      Left            =   54
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
      Text            =   "#Module_Multilanguage.kName"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   22
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   56
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
      Left            =   122
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   284
   End
   Begin DesktopLabel lblBase
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kBase"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   212
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kDescription"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   380
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      Height          =   100
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   122
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   380
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   206
   End
   Begin DesktopPopupMenu ppmBase
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
      Left            =   122
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   -1
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   212
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   146
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kDealer"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   311
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      Left            =   122
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   -1
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   311
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   146
   End
   Begin DesktopLabel LabelShare
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kShare"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   213
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   60
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
      Left            =   122
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   278
      Transparent     =   True
      Visible         =   True
      Width           =   146
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kStorage"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   278
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Rating rtgRating
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   27
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   122
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Rating          =   0
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   338
      Transparent     =   True
      Visible         =   True
      Width           =   144
   End
   Begin DesktopLabel lblRating
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kRating"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   344
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin DesktopLabel lblNicotine
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kNicotine"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   245
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin DesktopTextField txtNicotine
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
      Left            =   122
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   244
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   146
   End
   Begin DesktopLabel LabelShare
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kmg"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   245
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopLabel txtShareBase
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
      Left            =   352
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   True
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   212
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   50
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
      TabIndex        =   2
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
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   311
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
   Begin DesktopListBox FlavorList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   3
      ColumnWidths    =   "*,100,100"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   103
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#Module_Multilanguage.kFlavor	#Module_Multilanguage.kShare	#Module_Multilanguage.kShare"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   1
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   64
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   420
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel lblAroma
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kFlavor"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   179
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin DesktopPopupMenu ppmAroma
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
      Left            =   122
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   -1
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   179
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   146
   End
   Begin DesktopLabel lblShare
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
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Module_Multilanguage.kShare"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   180
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin ValueField txtShareAroma
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   352
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   179
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   42
   End
   Begin DesktopBevelButton btnCalculator
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowTabStop    =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   0
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   0
      CaptionDelta    =   0
      CaptionPosition =   0
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "#Module_Multilanguage.keJuiceRecipeCalculator"
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   BeginDesktopSegmentedButton DesktopSegmentedButton AddRemove
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      Left            =   397
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   7
      Scope           =   2
      Segments        =   "+\n\nFalse\r-\n\nFalse"
      SelectionStyle  =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   178
      Transparent     =   False
      Visible         =   True
      Width           =   40
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub CalculateBaseShare()
		  Dim d As Double
		  
		  If FlavorList.RowCount > 0 Then
		    
		    For X As Integer = 0 To FlavorList.RowCount-1
		      
		      d = d + CDbl(FlavorList.CellTextAt(X, 2))
		      
		    Next
		    
		  End If
		  
		  txtShareBase.Text = Format(100-d, "#.0#")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CalculateShareValues()
		  If FlavorList.RowCount > 0 And CDbl(Storage.Amount.Text) > 0 Then
		    
		    Dim X,Y As Integer
		    Y = FlavorList.RowCount-1
		    
		    For X = Y DownTo 0
		      
		      FlavorList.CellTextAt(X, 1) = Format(CDbl(Storage.Amount.Text) * (CDbl(FlavorList.CellTextAt(X, 2))/100), "#.0#")
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  Liquid = Nil
		  
		  txtName.Text = ""
		  cnvImage.Refresh
		  
		  FlavorList.RemoveAllRows
		  
		  ppmAroma.List_Flavors
		  ppmBase.List_Bases
		  
		  rtgRating.Rating = 0
		  
		  txtShareAroma.Text = Format( 0, "#.00" )
		  txtShareBase.Text = Format( 0, "#.00" )
		  txtNicotine.Text = Format( 0, "#.00" )
		  txtDescription.Text = ""
		  Storage.Amount.Text = Format( 0, "#.00" )
		  Storage.Units.List_Units
		  
		  ppmDealer.List_Dealers
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetNicotineValueFromBaseID()
		  If ppmBase.SelectedRowIndex > 0 Then
		    
		    Dim rs As RowSet
		    
		    Try
		      
		      // Nicotine
		      rs = db.SelectSQL("SELECT nicotine FROM bases WHERE id=?", _
		      ppmBase.RowTagAt(ppmBase.SelectedRowIndex).IntegerValue )
		      
		      
		      If rs <> Nil And Not rs.AfterLastRow Then
		        
		        txtNicotine.Text = Format(rs.Column("nicotine").DoubleValue, "#.0#")
		        Liquid.UpdateNicotine( rs.Column("nicotine").DoubleValue )
		        
		      End If
		      
		    Catch err As DatabaseException
		      
		      MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		      
		    End Try
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadLiquid(ID As Integer)
		  UIState( False )
		  
		  Liquid = New Class_Liquid( ID )
		  
		  If Liquid.ID > -1 Then
		    
		    txtName.Text = Liquid.Name
		    txtDescription.Text = Liquid.Description
		    rtgRating.Rating = Liquid.Rating
		    
		    Var rs As RowSet
		    
		    Try
		      
		      rs = db.SelectSQL( "SELECT * FROM storage WHERE id_item=? AND theType=?", Liquid.ID, Ingredient.Types.Liquid )
		      If rs <> Nil And Not rs.AfterLastRow Then
		        Storage.Amount.Text = Format( rs.Column( "theValue" ).DoubleValue, "#.0#" )
		        Storage.Units.ListIndexFromRowTag( rs.Column( "theUnit" ).StringValue.DefineEncoding( Encodings.UTF8 ) )
		        FlavorList.HeaderAt( 1 ) = Module_Multilanguage.kShare + " " + Storage.UnitNameFromRowTag( rs.Column( "theUnit" ).StringValue.DefineEncoding( Encodings.UTF8 ) )
		      End If
		      
		      If Liquid.Flavours.Count > 0 Then
		        
		        rs = db.SelectSQL( "Select id,theValue, theIngredientID " + _
		        "FROM liquids_ingredients " + _
		        "WHERE " + _
		        "theType = ? And " + _
		        "liquid_id = ?", _
		        Ingredient.Types.Flavour, _
		        Liquid.ID )
		        
		        While rs <> Nil And Not rs.AfterLastRow
		          
		          Var a As New Class_Aroma( rs.Column("theIngredientID").IntegerValue )
		          FlavorList.AddRow a.Name, _
		          "", _
		          Format( rs.Column("theValue").DoubleValue, "#.0#" )
		          FlavorList.CellTagAt( FlavorList.LastAddedRowIndex, 0 ) = rs.Column("theIngredientID").IntegerValue
		          FlavorList.RowTagAt( FlavorList.LastAddedRowIndex ) = rs.Column( "id" ).IntegerValue
		          
		          rs.MoveToNextRow
		          
		        Wend
		        
		      End If
		      
		      rs = db.SelectSQL( "SELECT liquids_ingredients.theIngredientID, bases.nicotine " + _
		      "FROM liquids_ingredients " + _
		      "LEFT JOIN bases ON liquids_ingredients.theIngredientID = bases.id " + _
		      "WHERE liquids_ingredients.liquid_id=? AND liquids_ingredients.theType=?", Liquid.ID, Ingredient.Types.Base )
		      
		      If rs <> Nil And Not rs.AfterLastRow Then
		        
		        ppmBase.ListIndexFromRowTag( rs.Column( "theIngredientID" ).IntegerValue )
		        txtNicotine.Text = Format( rs.Column( "nicotine" ).DoubleValue, "#.00" )
		        
		      End If
		      
		      rs = db.SelectSQL( "SELECT * FROM dealers_items WHERE id_item=? AND theType=?", Liquid.ID, Ingredient.Types.Liquid )
		      
		      If rs <> Nil And Not rs.AfterLastRow Then
		        
		        ppmDealer.ListIndexFromRowTag( rs.Column( "id_dealer" ).StringValue.DefineEncoding( Encodings.UTF8 ) )
		        
		      End If
		      
		      rs = db.SelectSQL( "SELECT * FROM storage WHERE id_item=? AND theType=?", Liquid.ID, Ingredient.Types.Liquid )
		      
		      If rs <> Nil And Not rs.AfterLastRow Then
		        
		        Storage.Amount.Text = Format( rs.Column( "theValue" ).DoubleValue, "#.0#" )
		        Storage.Units.ListIndexFromRowTag( rs.Column( "theUnit" ).StringValue.DefineEncoding( Encodings.UTF8 ) )
		        FlavorList.HeaderAt( 1 ) = Module_Multilanguage.kShare + " " + Storage.UnitNameFromRowTag( rs.Column( "theUnit" ).StringValue.DefineEncoding( Encodings.UTF8 ) )
		        
		      End If
		      
		      CalculateShareValues
		      CalculateBaseShare
		      
		    Catch err As DatabaseException
		      
		    End Try
		    
		  End If
		  
		  UIState( True )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UIState(EnableAll As Boolean)
		  txtName.Enabled = EnableAll
		  FlavorList.Enabled = EnableAll
		  AddRemove.Enabled = EnableAll
		  ppmAroma.Enabled = EnableAll
		  ppmBase.Enabled = EnableAll
		  ppmDealer.Enabled = EnableAll
		  txtShareAroma.Enabled = EnableAll
		  txtShareBase.Enabled = EnableAll
		  txtDescription.Enabled = EnableAll
		  txtNicotine.Enabled = EnableAll
		  rtgRating.Enabled = EnableAll
		  Storage.Amount.Enabled = EnableAll
		  Storage.Units.Enabled = EnableAll
		  
		  If EnableAll = False Then
		    
		    Clear
		    
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Liquid As Class_Liquid
	#tag EndProperty


#tag EndWindowCode

#tag Events cnvImage
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #Pragma unused areas
		  
		  g.ClearRectangle(0,0,100,100)
		  
		  If Liquid <> Nil And Liquid.Logo <> Nil Then
		    
		    g.ScaleToFit(Liquid.Logo)
		    
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
		  If Liquid = Nil Then Return
		  
		  If Me.Enabled Then
		    
		    If obj.PictureAvailable Or obj.FolderItemAvailable Then
		      
		      Dim tempPic As Picture
		      If obj.FolderItemAvailable Then
		        
		        If obj.FolderItem.Type <> "" Then
		          
		          tempPic = Picture.Open(obj.FolderItem)
		          
		        Else
		          
		          MessageDialog.Show( Module_Multilanguage.kUnsupportedFileType )
		          
		          Return
		          
		        End If
		        
		      Else
		        
		        tempPic = obj.Picture
		        
		      End If
		      
		      Liquid.Logo = tempPic
		      
		      Me.Refresh
		      
		      If Liquid.Logo <> Nil Then
		        
		        Dim pRow As New Picture(Window_Main.Main_Listbox.RowHeight,Window_Main.Main_Listbox.RowHeight)
		        pRow.Graphics.ScaleToFit(Liquid.Logo)
		        
		        If Window_Main.Main_Listbox.SelectedRowIndex > -1 Then
		          
		          Window_Main.Main_Listbox.RowImageAt(Window_Main.Main_Listbox.SelectedRowIndex) = pRow
		          
		        End If
		        
		      End If
		      
		    End If
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  If Liquid <> Nil And Liquid.Logo <> Nil Then
		    
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
		  
		  If Liquid = Nil Or Liquid.Logo = Nil Then Return False
		  If MesBox( Module_Multilanguage.kQuestionDeleteImage ) <> 6 Then Return False
		  
		  Try
		    
		    Liquid.Logo = Nil
		    
		    If Window_Main.Main_Listbox.SelectedRowIndex > -1 Then
		      
		      Var pRow As New Picture( Window_Main.Main_Listbox.RowHeight, Window_Main.Main_Listbox.RowHeight )
		      
		      If Color.IsDarkMode Then
		        pRow.Graphics.ScaleToFit( Liquid_DarkMode )
		      Else
		        pRow.Graphics.ScaleToFit( Liquid_LightMode )
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
		      
		      Liquid.Name = Me.Text.Trim
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
		        
		        Liquid.Name = Me.Text.Trim
		        Window_Main.Main_Listbox.SelectedRowText = Me.Text.Trim
		        
		      End If
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblBase
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
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
		      
		      Liquid.Description = Me.Text.Trim
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub FocusLost()
		  If Liquid = Nil Or Liquid.ID < 0 Then Return
		  
		  If Me.Enabled Then
		    
		    Liquid.Description = Me.Text.Trim
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ppmBase
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If Liquid = Nil Then Return
		  
		  #pragma unused item
		  
		  If Me.Enabled Then
		    
		    If Me.SelectedRowIndex > -1 Then
		      
		      GetNicotineValueFromBaseID
		      Liquid.UpdateBase( item.Tag.IntegerValue, txtShareBase.Text.ToDouble )
		      
		    End If
		    
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
		  #Pragma Unused item
		  
		  If Liquid = Nil Then Return
		  
		  If Me.Enabled Then
		    
		    If Me.SelectedRowIndex > -1 Then
		      
		      Liquid.UpdateDealer( item.Tag.IntegerValue )
		      
		    End If
		    
		  End If
		  
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
#tag Events lblStorage
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rtgRating
	#tag Event
		Sub objectImageSelected(imageValue as Integer)
		  If Liquid = Nil Or Liquid.ID < 0 Then Return
		  
		  If Me.Enabled Then
		    
		    Liquid.Rating = imageValue
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblRating
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblNicotine
	#tag Event
		Sub Opening()
		  Me.Text = Me.Text + ":"
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
		      
		      Liquid.UpdateNicotine( Me.Text.ToDouble )
		      
		    End If
		    
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub FocusLost()
		  If Me.Enabled Then
		    
		    Liquid.UpdateNicotine( Me.Text.ToDouble )
		    
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
#tag Events btnDealer
	#tag Event
		Sub Pressed()
		  Window_Main.PushTheButton( Module_Multilanguage.kDealers )
		  Window_Main.LoadList
		  Window_Main.Main_Listbox.ScrollToID( ppmDealer.RowTagAt( ppmDealer.SelectedRowIndex ).IntegerValue )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FlavorList
	#tag Event
		Sub Opening()
		  Me.ColumnWidths = App.Preferences.getStringValue("Liquid Flavors List Column Widths", "*,60,60")
		  Me.HeaderAt(2) = Me.HeaderAt(2) + " %"
		  Me.ColumnAlignmentAt(1) = DesktopListBox.Alignments.Decimal
		  Me.ColumnAlignmentAt(2) = DesktopListBox.Alignments.Decimal
		  Me.ColumnAlignmentOffsetAt(1) = -22
		  Me.ColumnAlignmentOffsetAt(2) = -22
		  Me.ColumnTypeAt(2) = DesktopListBox.CellTypes.TextField
		End Sub
	#tag EndEvent
	#tag Event
		Sub Closing()
		  App.Preferences.setStringValue("Liquid Flavors List Column Widths", Me.ColumnWidths)
		End Sub
	#tag EndEvent
	#tag Event
		Function CellPressed(row As Integer, column As Integer, x As Integer, y As Integer) As Boolean
		  #pragma unused y
		  #pragma unused x
		  
		  If row > -1 And column=2 Then
		    
		    Try
		      
		      db.ExecuteSQL("UPDATE liquid_ingred SET theValue=? WHERE id=?", _
		      CDbl(Me.CellTextAt(row,column)), _
		      FlavorList.RowTagAt(row).IntegerValue )
		      
		      Me.CellTextAt(row,column) = Format(CDbl(Me.CellTextAt(row,column)), "#.0#")
		      
		    Catch err As DatabaseException
		      
		      MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		      
		    End Try
		    
		    CalculateShareValues
		    CalculateBaseShare
		    
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblAroma
	#tag Event
		Sub Opening()
		  Me.Text = Module_Multilanguage.kFlavor + ":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblShare
	#tag Event
		Sub Opening()
		  Me.Text = Module_Multilanguage.kShare + " (%):"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCalculator
	#tag Event
		Sub Pressed()
		  winCalculator.Show
		  
		  If FlavorList.RowCount > 0 Then
		    
		    Dim d As Double
		    
		    For X As Integer = 0 To FlavorList.RowCount-1
		      
		      d = d + CDbl(FlavorList.CellTextAt(X,2))
		      
		    Next
		    
		    winCalculator.txfFlavor.Text = Format(d, "0.0#")
		    
		  End If
		  
		  If CDbl(txtNicotine.Text) > 0 Then
		    
		    winCalculator.txfTarget_Nicotine_Level.Text = txtNicotine.Text
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  If Color.IsDarkMode Then
		    
		    Me.Icon = calc16_dm
		    
		  Else
		    
		    Me.Icon = calc16_lm
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddRemove
	#tag Event
		Sub Pressed(segmentIndex As Integer)
		  Select Case segmentIndex
		    
		  Case 0
		    
		    If ppmAroma.SelectedRowIndex > 0 Then
		      
		      If Liquid.AddAroma( ppmAroma.RowTagAt( ppmAroma.SelectedRowIndex ).IntegerValue, txtShareAroma.Text.ToDouble ) Then
		        
		        FlavorList.AddRow ppmAroma.SelectedRowText, "", Format( CDbl( txtShareAroma.Text ), "#.0#" )
		        FlavorList.CellTagAt( FlavorList.LastAddedRowIndex, 0 ) = ppmAroma.RowTagAt( ppmAroma.SelectedRowIndex ).IntegerValue
		        
		        CalculateShareValues
		        
		      End If
		      
		    End If
		    
		  Case 1
		    
		    If FlavorList.SelectedRowCount > 0 Then
		      
		      Var n As Integer
		      If FlavorList.SelectedRowCount = 1 Then
		        n = MesBox( Module_Multilanguage.kRemoveItem.Replace( "$1", FlavorList.CellTextAt( FlavorList.SelectedRowIndex, 0 ) ) )
		      Else
		        n = MesBox( Module_Multilanguage.kRemoveItems.Replace( "$1", Module_Multilanguage.kFlavors ) )
		      End If
		      
		      If n = 6 Then
		        
		        For X As Integer = FlavorList.LastRowIndex DownTo 0
		          
		          If FlavorList.RowSelectedAt( X ) Then
		            
		            If Liquid.RemoveIngredientWithID( FlavorList.RowTagAt( X ).IntegerValue ) Then
		              
		              FlavorList.RemoveRowAt( X )
		              
		            End If
		            
		          End If
		          
		        Next
		        
		      End If
		      
		    End If
		    
		  End Select
		  
		  CalculateBaseShare
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
