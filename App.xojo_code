#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Function AppleEventReceived(theEvent As AppleEvent, eventClass As String, eventID As String) As Boolean
		  #Pragma unused eventClass
		  #Pragma unused theEvent
		  
		  If eventID = "rapp" Then
		    
		    Window_Main.Show
		    
		  ElseIf eventID = "quit" Then
		    
		    Quit
		    
		  End If
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Closing()
		  #Pragma BreakOnExceptions False
		  
		  If db <> Nil Then
		    
		    Try
		      
		      db.CommitTransaction
		      
		    Catch err As DatabaseException
		      // Keine Transaktionen offen...
		    End Try
		    
		  End If
		  
		  #Pragma BreakOnExceptions True
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  App.AllowAutoQuit = True
		  
		  Preferences = new Class_Preferences("com.schneppmueller.liquiddatabase")
		  
		  If App.Preferences.getBooleanValue( "Use mySQL-Server", False ) Then
		    
		    If App.Preferences.getStringValue( "mySQL Server Address" ).Trim.Length = 0 Or App.Preferences.getStringValue( "mySQL Username" ).Trim.Length = 0 Then
		      
		      winSettings.Show
		      
		    Else
		      
		      // PrepareDatabaseFile
		      Connect_mySQLServer
		      
		    End If
		    
		  Else
		    
		    Connect_SQLiteFile
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  System.Log(System.LogLevelError, error.Message)
		  
		  Return True
		  
		End Function
	#tag EndEvent


	#tag MenuHandler
		Function AboutItem() As Boolean Handles AboutItem.Action
		  #If TargetMacOS Then
		    
		    Declare Function NSClassFromString Lib "Cocoa" (aClassName As CFStringRef) As Ptr
		    Declare Function SharedApplication Lib "Cocoa" Selector "sharedApplication" (receiver As Ptr) As Ptr
		    
		    Dim sA As Ptr = NSClassFromString("NSApplication")
		    sA = SharedApplication(sA)
		    
		    Declare Sub OrderFrontStandardAboutPanel Lib "Cocoa" Selector "orderFrontStandardAboutPanel:" (receiver As Ptr, iD As Ptr)
		    
		    OrderFrontStandardAboutPanel(sA, Nil)
		    
		  #Else
		    
		    MsgBox kAppName + EndOfLine + EndOfLine + "Version " + Str(App.MajorVersion) + "." + Str(App.MinorVersion) + " (" + Str(App.BugVersion) + ")" + _
		    EndOfLine + "© 2016 Sascha Schneppmüller"
		    
		  #EndIf
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpHelp() As Boolean Handles HelpHelp.Action
		  ShowHelp
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function kFileNewBase() As Boolean Handles kFileNewBase.Action
		  Window_Main.PagePanel_Main.SelectedPanelIndex = 2
		  Window_Main.Show
		  Window_Main.AddNewItem
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function kFileNewDealer() As Boolean Handles kFileNewDealer.Action
		  Window_Main.PagePanel_Main.SelectedPanelIndex = 3
		  Window_Main.Show
		  Window_Main.AddNewItem
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function kFileNewFlavor() As Boolean Handles kFileNewFlavor.Action
		  Window_Main.PagePanel_Main.SelectedPanelIndex = 1
		  Window_Main.Show
		  Window_Main.AddNewItem
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function kFileNewLiquid() As Boolean Handles kFileNewLiquid.Action
		  Window_Main.PagePanel_Main.SelectedPanelIndex = 0
		  Window_Main.Show
		  Window_Main.AddNewItem
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowMainWindow() As Boolean Handles WindowMainWindow.Action
		  Window_Main.Show
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub Connect_mySQLServer()
		  If DebugBuild Then
		    #Pragma BreakOnExceptions False
		  End If
		  
		  db = New MySQLCommunityServer
		  
		  db.Host = App.Preferences.getStringValue("mySQL Server Address")
		  db.UserName = App.Preferences.getStringValue("mySQL Username")
		  db.Password = App.Preferences.getStringValue("mySQL Password")
		  
		  CreatemySQLServerTables
		  
		  Try
		    
		    db.Connect
		    
		    Window_Main.Show
		    
		  Catch err As DatabaseException
		    
		    If Not DebugBuild Then
		      
		      winSettings.Show
		      
		    Else
		      
		      #Pragma BreakOnExceptions True
		      Window_Main.Show
		      
		    End If
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Connect_SQLiteFile()
		  // Make sure we actually have a file...
		  Try
		    Var fileDB As New SQLiteDatabase
		    fileDB.DatabaseFile = SpecialFolder.ApplicationData.Child( "com.schneppmueller.liquiddatabase" ).Child( "liquid_database" + ".db" )
		    fileDB.CreateDatabase
		    fileDB.Close
		    fileDB = Nil
		  Catch Error As IOException
		    // Break
		  End Try
		  
		  Var dbFile As FolderItem = SpecialFolder.ApplicationData.Child( "com.schneppmueller.liquiddatabase" ).Child( "liquid_database" + ".db" )
		  
		  If dbFile <> Nil And dbFile.Exists Then
		    
		    db = New SQLiteDatabase(dbFile)
		    
		  Else
		    
		    winSettings.Show
		    
		  End If
		  
		  Try
		    
		    CreateSQLiteTables
		    
		    Window_Main.Show
		    
		  Catch err As DatabaseException
		    
		    If Not DebugBuild Then
		      
		      winSettings.Show
		      
		    Else
		      
		      #Pragma BreakOnExceptions True
		      Window_Main.Show
		      
		    End If
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Preferences As Class_Preferences
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
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
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProcessID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
