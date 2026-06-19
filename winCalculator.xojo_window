#tag DesktopWindow
Begin DesktopWindow winCalculator
   Backdrop        =   0
   BackgroundColor =   &c00000000
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   568
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   568
   MaximumWidth    =   500
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   568
   MinimumWidth    =   500
   Resizeable      =   False
   Title           =   "#Module_Multilanguage.keJuiceRecipeCalculator"
   Type            =   0
   Visible         =   True
   Width           =   500
   Begin DesktopRectangle RoundRectangle_InputBackground
      AllowAutoDeactivate=   True
      BorderColor     =   &c7F7F7F00
      BorderThickness =   1.0
      CornerSize      =   16.0
      Enabled         =   True
      FillColor       =   &c312C3500
      Height          =   242
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   460
      Begin ValueField txfNicotine_Base
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
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   82
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   50
      End
      Begin ValueField txfTarget_Nicotine_Level
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
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   116
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   50
      End
      Begin ValueField txfAmount_To_Create
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
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   150
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   50
      End
      Begin ValueField txfWater_Optional
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
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   184
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   50
      End
      Begin ValueField txfFlavor
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
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   218
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel Label_InputValues
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "mg"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   82
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_InputValues
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "mg"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   116
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_InputValues
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "ml"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   150
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_InputValues
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "%"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   184
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_InputValues
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "%"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   218
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_InputTitle
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.keJuiceRecipeCalculator"
         TextAlignment   =   0
         TextColor       =   &c0080FF00
         Tooltip         =   ""
         Top             =   40
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   420
      End
      Begin DesktopLabel Label_InputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kNicotineBase"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   82
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel Label_InputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kTargetNicotineLevel"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   116
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel Label_InputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kAmountToCreate"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   150
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel Label_InputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kWaterOptional"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   184
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel Label_InputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "RoundRectangle_InputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kFlavor"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   218
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
   End
   Begin DesktopRectangle RoundRectangle_OutputBackground
      AllowAutoDeactivate=   True
      BorderColor     =   &c7F7F7F00
      BorderThickness =   1.0
      CornerSize      =   16.0
      Enabled         =   True
      FillColor       =   &c302C3400
      Height          =   242
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   274
      Transparent     =   False
      Visible         =   True
      Width           =   460
      Begin DesktopLabel Label_OutputTitle
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kRecipe"
         TextAlignment   =   0
         TextColor       =   &c0080FF00
         Tooltip         =   ""
         Top             =   294
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   420
      End
      Begin DesktopLabel Label_OutputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kIngredient"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   336
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel Label_Output_ml
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "ml"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   336
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel Label_Output_PercentOfTotal
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kPercentOfTotal"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   336
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_OutputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kPGOrVGWithNicotine"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   368
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel lblPG_VG_With_Nicotine
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 ml"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   368
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel lblPG_VG_With_NicotinePercent
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 %"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   368
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_OutputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kPGOrVGWithoutNicotine"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   400
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel lblPG_VG_without_Nicotine
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 ml"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   400
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel lblPG_VG_without_NicotinePercent
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 %"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   400
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_OutputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kWater"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   432
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel lblWater
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 ml"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   432
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel lblWaterPercent
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 %"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   432
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label_OutputLabels
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Module_Multilanguage.kFlavorings"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   464
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   245
      End
      Begin DesktopLabel lblFlavorings
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 ml"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   464
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel lblFlavoringsPercent
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle_OutputBackground"
         Italic          =   False
         Left            =   359
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0 %"
         TextAlignment   =   0
         TextColor       =   &cE6E6E600
         Tooltip         =   ""
         Top             =   464
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin DesktopButton pbtSavePDF
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#Module_Multilanguage.kSaveSelectedRecipeAsPDF"
      Default         =   False
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
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   528
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   460
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  self.SavePosition
		  
		  App.Preferences.setStringValue("Calc Amount to create", txfAmount_To_Create.Text)
		  App.Preferences.setStringValue("Calc Flavor", txfFlavor.Text)
		  App.Preferences.setStringValue("Calc Nicotin Base", txfNicotine_Base.Text)
		  App.Preferences.setStringValue("Calc Target Nicotin Level", txfTarget_Nicotine_Level.Text)
		  App.Preferences.setStringValue("Calc Water", txfWater_Optional.Text)
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Me.Title = Module_Multilanguage.keJuiceRecipeCalculator
		  self.RestorePosition(True)
		  
		  txfAmount_To_Create.Text = App.Preferences.getStringValue("Calc Amount to create", "0")
		  txfFlavor.Text = App.Preferences.getStringValue("Calc Flavor", "0")
		  txfNicotine_Base.Text = App.Preferences.getStringValue("Calc Nicotin Base", "0")
		  txfTarget_Nicotine_Level.Text = App.Preferences.getStringValue("Calc Target Nicotin Level", "0")
		  txfWater_Optional.Text = App.Preferences.getStringValue("Calc Water", "0")
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Calculate()
		  // (Desired Strength / Concentrated Nicotine Strength) x Bottle size (in milliliters) = Amount needed (in milliliters).
		  
		  // Wasser Anteil in ml
		  dblWater = (CDbl(txfAmount_To_Create.Text) / 100) * CDbl(txfWater_Optional.Text)
		  
		  // Aroma Anteil in ml
		  dblFlavorings = (CDbl(txfAmount_To_Create.Text) / 100) * CDbl(txfFlavor.Text)
		  
		  // Wieviel Base mit Nikotin benötigen wir?
		  If CDbl(txfTarget_Nicotine_Level.Text) > 0 And CDbl(txfNicotine_Base.Text) > 0 Then
		    
		    dblPG_VG_Nicotine = (CDbl(txfTarget_Nicotine_Level.Text) / CDbl(txfNicotine_Base.Text)) * CDbl(txfAmount_To_Create.Text)
		    
		  End If
		  
		  // Jetzt der Anteil Base ohne Nikotin, abzüglich Wasser und Aroma Anteil
		  dblPG_VG_Clean = CDbl(txfAmount_To_Create.Text) - dblPG_VG_Nicotine - dblWater - dblFlavorings
		  
		  // Werte auf dem Bildschirm ausgeben
		  lblPG_VG_With_Nicotine.Text = Format(dblPG_VG_Nicotine, "0.0") + " ml"
		  lblPG_VG_without_Nicotine.Text = Format(dblPG_VG_Clean, "0.0") + " ml"
		  lblWater.Text = Format(dblWater, "0.0") + " ml"
		  lblFlavorings.Text = Format(dblFlavorings, "0.0") + " ml"
		  
		  dblPG_VG_Nicotine_Percent = dblPG_VG_Nicotine / (CDbl(txfAmount_To_Create.Text) / 100)
		  dblPG_VG_Clean_Percent = dblPG_VG_Clean / (CDbl(txfAmount_To_Create.Text) / 100)
		  dblWater_Percent = dblWater / (CDbl(txfAmount_To_Create.Text) / 100)
		  dblFlavorings_Percent = dblFlavorings / (CDbl(txfAmount_To_Create.Text) / 100)
		  
		  If dblPG_VG_Nicotine_Percent > 0 Or dblPG_VG_Clean_Percent > 0 Then
		    
		    lblPG_VG_With_NicotinePercent.Text = Format(dblPG_VG_Nicotine_Percent, "0.0") + " %"
		    lblPG_VG_without_NicotinePercent.Text = Format(dblPG_VG_Clean_Percent, "0.0") + " %"
		    lblWaterPercent.Text = Format(dblWater_Percent, "0.0") + " %"
		    lblFlavoringsPercent.Text = Format(dblFlavorings_Percent, "0.0") + " %"
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreatePDF(LiquidID As Integer)
		  docPDF = New PDFDocument( PDFDocument.PageSizes.A4 )
		  Var g As Graphics = docPDF.Graphics
		  Var strLiquidName, strBeschreibung, strBase As String
		  Var dicAroma As New Dictionary
		  Var ReferencePoint As Integer
		  Var i As Picture
		  
		  docPDF.Author = Module_Multilanguage.kAppName
		  docPDF.Creator = Module_Multilanguage.kAppName
		  docPDF.Title = strLiquidName
		  docPDF.KeyWords = Module_Multilanguage.kRecipe + "," + Module_Multilanguage.kLiquids
		  docPDF.Subject = strLiquidName
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( "SELECT * FROM liquids WHERE id=?", LiquidID )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      // Bild aus DB laden
		      If rs.Column( "image" ).PictureValue <> Nil Then
		        
		        i = rs.Column( "image" ).PictureValue
		        g.DrawPicture( i, g.Width - i.Width - 20, 100, i.Width, i.Height )
		        
		      End If
		      
		      // Rezept erstellen
		      strLiquidName = rs.Column( "liquid_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      strBeschreibung = rs.Column( "liquid_description" ).StringValue.DefineEncoding( Encodings.UTF8 )
		      
		      rs = db.SelectSQL( "SELECT * FROM liquids_ingredients WHERE liquid_id = ?", LiquidID )
		      
		      If rs <> Nil And Not rs.AfterLastRow Then
		        
		        While Not rs.AfterLastRow
		          
		          If rs.Column( "theType" ).IntegerValue = Integer( Ingredient.Types.Flavour ) Then // Aroma
		            
		            Var a As New Class_Aroma( rs.Column( "theIngredientID" ).IntegerValue )
		            dicAroma.Value( a.Name ) = rs.Column( "theValue" ).DoubleValue
		            
		          ElseIf rs.Column( "theType" ).IntegerValue = Integer( Ingredient.Types.Base ) Then // Base
		            
		            strBase = BaseNameFromID( rs.Column( "theIngredientID" ).IntegerValue )
		            
		            If strBase.Right( Module_Multilanguage.kBase.Length ) <> Module_Multilanguage.kBase Then strBase = strBase + " " + Module_Multilanguage.kBase
		            
		          End If
		          
		          rs.MoveToNextRow
		          
		        Wend
		        
		      End If
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  // // Titel
		  g.DrawText( strLiquidName, 20, ReferencePoint, g.Width - 20 )
		  
		  ReferencePoint = ReferencePoint + 90
		  
		  // Beschreibung
		  If strBeschreibung.Trim.Length > 0 Then
		    
		    If i <> Nil Then
		      g.DrawText( strBeschreibung, 20, ReferencePoint, g.Width - i.Width - 20 )
		    Else
		      g.DrawText( strBeschreibung, 20, ReferencePoint, g.Width - 20 )
		    End If
		    
		    ReferencePoint = ReferencePoint + 100
		    
		  End If
		  
		  
		  // Einleitung
		  Var strEntryText As String = Module_Multilanguage.kFollowingIngredientsWillBeNeededForThisRecipe.ReplaceAll( "%AMOUNT%", txfAmount_To_Create.Text ).ReplaceAll( "%LIQUIDNAME%", strLiquidName )
		  If i <> Nil Then
		    g.DrawText( strEntryText, 20, ReferencePoint, g.Width - i.Width - 20 )
		  Else
		    g.DrawText( strEntryText, 20, ReferencePoint, g.Width - 20 )
		  End If
		  
		  ReferencePoint = ReferencePoint + 40
		  
		  // Aromen
		  Var dblAromaAnteil As Double
		  
		  If dicAroma <> Nil And dicAroma.KeyCount > 0 Then
		    
		    For ListCounter As Integer = 0 To dicAroma.KeyCount - 1
		      
		      // Anteil des Aromas vom Gesamt berechnen
		      dblAromaAnteil = ( CDbl( txfAmount_To_Create.Text ) / 100 ) * dicAroma.Value( dicAroma.Key( ListCounter ) ).DoubleValue
		      ReferencePoint = ReferencePoint + 12
		      g.DrawText( Format( dblAromaAnteil, "#.0#" ) + "ml (" + Format( dicAroma.Value( dicAroma.Key( ListCounter ) ).DoubleValue, "#.0#" ) + "%) " + dicAroma.Key( ListCounter ).StringValue, 20, ReferencePoint )
		      
		    Next
		    
		    ReferencePoint = ReferencePoint + 28
		    
		  End If
		  
		  // Base
		  ReferencePoint = ReferencePoint + 12
		  g.DrawText( Format( dblPG_VG_Clean, "#.0#" ) + "ml (" + Format( dblPG_VG_Clean_Percent, "#.0#" ) + "%) " + Module_Multilanguage.kPGOrVGWithoutNicotine + " " + Module_Multilanguage.kand, 20, ReferencePoint )
		  ReferencePoint = ReferencePoint + 12
		  g.DrawText( Format( dblPG_VG_Nicotine, " #.0#" ) + "ml (" + Format( dblPG_VG_Nicotine_Percent, "#.0#" ) + "%) " + Module_Multilanguage.kPGOrVGWithNicotine + " (" + txfNicotine_Base.Text + "mg)", 20, ReferencePoint )
		  ReferencePoint = ReferencePoint + 12
		  g.DrawText( Module_Multilanguage.kOr + " " + Format( dblPG_VG_Clean + dblPG_VG_Nicotine, "#.0#" ) + "ml (" + Format( dblPG_VG_Clean_Percent + dblPG_VG_Nicotine_Percent, "#.0#" ) + "%) " + strBase, 20, ReferencePoint )
		  
		  ReferencePoint = ReferencePoint + 28
		  
		  // Wasser
		  If txfWater_Optional.Text.ToDouble > 0 Then
		    
		    ReferencePoint = ReferencePoint + 12
		    g.DrawText( lblWater.Text + "ml (" + txfWater_Optional.Text + "%)", 20, ReferencePoint )
		    
		    ReferencePoint = ReferencePoint + 28
		    
		  End If
		  
		  // Nikotin
		  If txfTarget_Nicotine_Level.Text.ToDouble > 0 Then
		    
		    ReferencePoint = ReferencePoint + 12
		    g.DrawText( txfTarget_Nicotine_Level.Text + "mg " + Module_Multilanguage.kNicotine, 20, ReferencePoint )
		    
		  End If
		  
		  // Speichern
		  Var pdfType As New FileType
		  pdfType.Name = "Portable Document Format/pdf"
		  pdfType.Extensions = "pdf"
		  
		  Var f As FolderItem = FolderItem.ShowSaveFileDialog( pdfType, strLiquidName + ".pdf" )
		  
		  If f <> Nil Then
		    
		    If f.Exists Then 
		      
		      f.Remove
		      
		    End If
		    
		    docPDF.Save( f )
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Note, Name = Liquid-Formula
		(Desired Strength / Concentrated Nicotine Strength) x Bottle size (in milliliters) = Amount needed (in milliliters).
		
		 
		
		So if you were using a 72mg nicotine concentrate and wanted 10ml of 18mg eliquid, the formula would look like this:
		
		 
		
		(18/72) x 10 = 2.5ml
		
		If you were using a 48mg nicotine concentrate and wanted 100ml of 3mg eliquid, the formula would look like this:
		
		(3/48) x 100 = 6.25ml
	#tag EndNote


	#tag Property, Flags = &h21
		Private dblFlavorings As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblFlavorings_Percent As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblPG_VG_Clean As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblPG_VG_Clean_Percent As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblPG_VG_Nicotine As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblPG_VG_Nicotine_Percent As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblWater As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dblWater_Percent As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private docPDF As PDFDocument
	#tag EndProperty


#tag EndWindowCode

#tag Events txfNicotine_Base
	#tag Event
		Sub TextChanged()
		  Calculate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txfTarget_Nicotine_Level
	#tag Event
		Sub TextChanged()
		  Calculate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txfAmount_To_Create
	#tag Event
		Sub TextChanged()
		  Calculate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txfWater_Optional
	#tag Event
		Sub TextChanged()
		  Calculate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txfFlavor
	#tag Event
		Sub TextChanged()
		  Calculate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbtSavePDF
	#tag Event
		Sub Pressed()
		  If Window_Main.PagePanel_Main.SelectedPanelIndex = 0 And _
		    Window_Main.Container_Liquid.Liquid <> Nil And _
		    Window_Main.Container_Liquid.Liquid.ID > -1 Then
		    
		    CreatePDF(Window_Main.Container_Liquid.Liquid.ID)
		    
		  Else
		    
		    MessageDialog.Show( Module_Multilanguage.kSelectOnlyOneEntry )
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
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
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
