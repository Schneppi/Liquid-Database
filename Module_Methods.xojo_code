#tag Module
Protected Module Module_Methods
	#tag Method, Flags = &h0
		Function AdvanceNextLine(Extends myPage As PDFDocument, ReferencePoint As Integer, FontSize As Integer) As Integer
		  #pragma unused myPage
		  
		  Return ReferencePoint + FontSize + 2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BaseNameFromID(BaseID As Integer) As String
		  Dim rs As RowSet = db.SelectSQL("Select base_name FROM bases WHERE id=" + Str(BaseID))
		  
		  Try
		    
		    If rs<>Nil And Not rs.AfterLastRow Then
		      
		      Return rs.Column("base_name").StringValue.DefineEncoding(Encodings.UTF8)
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return "?"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreatemySQLServerTables()
		  Try
		    
		    #Pragma BreakOnExceptions False
		    
		    db.Connect
		    
		    db.ExecuteSQL("CREATE DATABASE IF NOT EXISTS liquid_database CHARACTER SET utf8 COLLATE utf8_general_ci")
		    
		    db.DatabaseName = "liquid_database"
		    
		    db.Close
		    db.Connect
		    
		    db.ExecuteSQL( "set names utf8 collate utf8_general_ci" )
		    db.ExecuteSQL( "set character set utf8" )
		    db.ExecuteSQL( "use liquid_database" )
		    
		    db.ExecuteSQL(mySQLServerTables)
		    
		    #Pragma BreakOnExceptions True
		    
		  Catch err As DatabaseException
		    
		    If err.ErrorNumber <> 1050 Then // Table XXX already exist
		      
		      MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		      
		      db.Close
		      
		      System.Log( System.LogLevelEmergency, "Failure while creating the Database. Error: " + err.Message )
		      
		      Quit
		      
		    End If
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateSQLiteTables()
		  Try
		    
		    #Pragma BreakOnExceptions False
		    
		    db.Connect
		    
		    db.ExecuteSQL( SQLiteTables )
		    
		    #Pragma BreakOnExceptions True
		    
		  Catch err As DatabaseException
		    
		    If err.Message.IndexOf( "already exist" ) = -1 Then // Table XXX already exist
		      
		      MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		      
		      db.Close
		      
		      System.Log( System.LogLevelEmergency, "Failure while creating the Database. Error: " + err.Message )
		      
		      Quit
		      
		    End If
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ListIndexFromRowTag(Extends PPM As DesktopPopupMenu, theValue As Integer)
		  If PPM.RowCount > 0 Then
		    
		    Dim Y As Integer = PPM.RowCount-1
		    
		    For X As Integer = 0 To Y
		      
		      If PPM.RowTagAt(X).IntegerValue = theValue Then
		        
		        PPM.SelectedRowIndex = X
		        
		        Return
		        
		      End If
		      
		    Next
		    
		    PPM.SelectedRowIndex = 0
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ListIndexFromRowTag(Extends PPM As DesktopPopupMenu, theValue As String)
		  If PPM.RowCount > 0 Then
		    
		    Dim Y As Integer = PPM.RowCount-1
		    
		    For X As Integer = 0 To Y
		      
		      If PPM.RowTagAt(X).StringValue = theValue Then
		        
		        PPM.SelectedRowIndex = X
		        
		        Return
		        
		      End If
		      
		    Next
		    
		    PPM.SelectedRowIndex = 0
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Bases(Extends LB As DesktopListbox, SearchPhrase As String)
		  Var sqlString As String = "SELECT base_name, id, image FROM bases "
		  
		  If SearchPhrase.Trim.Length > 0 Then
		    sqlString = sqlString + " WHERE base_name LIKE '%" + SearchPhrase.ReplaceAll( " ", "%" ) + "%' "
		  End If
		  
		  sqlString = sqlString + "ORDER BY base_name"
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( sqlString )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      While Not rs.AfterLastRow
		        
		        LB.AddRow rs.Column( "base_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        Var pRow As New Picture( LB.RowHeight, LB.RowHeight )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          
		        Else
		          
		          If Color.IsDarkMode Then
		            pRow.Graphics.ScaleToFit( Base_DarkMode )
		          Else
		            pRow.Graphics.ScaleToFit( Base_LightMode )
		          End If
		          
		        End If
		        
		        LB.RowImageAt( LB.LastAddedRowIndex ) = pRow
		        
		        LB.RowTagAt( LB.LastAddedRowIndex ) = rs.Column( "id" ).IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Bases(Extends PPM As DesktopPopupMenu)
		  PPM.RemoveAllRows
		  
		  Dim rs As RowSet = db.SelectSQL("SELECT base_name, id FROM bases ORDER BY base_name")
		  
		  Try
		    
		    If rs <> Nil Then
		      
		      PPM.AddRow Module_Multilanguage.kNone
		      PPM.RowTagAt(0) = -1
		      
		      While Not rs.AfterLastRow
		        
		        PPM.AddRow rs.Column("base_name").StringValue.DefineEncoding( Encodings.UTF8 )
		        PPM.RowTagAt(PPM.RowCount-1) = rs.Column("id").IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		      If PPM.RowCount > 0 Then
		        
		        PPM.SelectedRowIndex = 0
		        
		      End If
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Dealers(Extends LB As DesktopListbox, SearchPhrase As String)
		  Var sqlString As String = "SELECT dealer_name, id, image FROM dealers "
		  
		  If SearchPhrase.Trim.Length > 0 Then
		    sqlString = sqlString + " WHERE dealer_name LIKE '%" + SearchPhrase.ReplaceAll( " ", "%" ) + "%' "
		  End If
		  
		  sqlString = sqlString + "ORDER BY dealer_name"
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( sqlString )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      While Not rs.AfterLastRow
		        
		        LB.AddRow rs.Column( "dealer_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          Var pRow As New Picture( LB.RowHeight, LB.RowHeight )
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          LB.RowImageAt( LB.LastAddedRowIndex ) = pRow
		          
		        End If
		        
		        LB.RowTagAt( LB.LastAddedRowIndex ) = rs.Column( "id" ).IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Dealers(Extends PPM As DesktopPopupMenu)
		  PPM.RemoveAllRows
		  
		  Dim rs As RowSet = db.SelectSQL("SELECT dealer_name, id FROM dealers ORDER BY dealer_name")
		  
		  Try
		    
		    If rs <> Nil Then
		      
		      PPM.AddRow Module_Multilanguage.kNone
		      PPM.RowTagAt(0) = -1
		      
		      While Not rs.AfterLastRow
		        
		        PPM.AddRow rs.Column("dealer_name").StringValue.DefineEncoding( Encodings.UTF8 )
		        PPM.RowTagAt(PPM.RowCount-1) = rs.Column("id").IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		      If PPM.RowCount > 0 Then
		        
		        PPM.SelectedRowIndex = 0
		        
		      End If
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Flavors(Extends LB As DesktopListbox, SearchPhrase As String)
		  Var sqlString As String = "SELECT flavor_name, id, image FROM flavors "
		  
		  If SearchPhrase.Trim.Length > 0 Then
		    sqlString = sqlString + " WHERE flavor_name LIKE '%" + SearchPhrase.ReplaceAll( " ", "%" ) + "%' "
		  End If
		  
		  sqlString = sqlString + "ORDER BY flavor_name"
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( sqlString )
		    
		    If rs <> Nil And Not rs.AfterLastRow Then
		      
		      While Not rs.AfterLastRow
		        
		        LB.AddRow rs.Column( "flavor_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        Var pRow As New Picture( LB.RowHeight, LB.RowHeight )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          
		        Else
		          
		          If Color.IsDarkMode Then
		            pRow.Graphics.ScaleToFit( Flavor_DarkMode )
		          Else
		            pRow.Graphics.ScaleToFit( Flavor_LightMode )
		          End If
		          
		        End If
		        
		        LB.RowImageAt( LB.LastAddedRowIndex ) = pRow
		        
		        LB.RowTagAt( LB.LastAddedRowIndex ) = rs.Column( "id" ).IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Flavors(Extends PPM As DesktopPopupMenu)
		  PPM.RemoveAllRows
		  
		  Try
		    
		    Dim rs As RowSet = db.SelectSQL("SELECT flavor_name, id FROM flavors ORDER BY flavor_name")
		    
		    If rs <> Nil Then
		      
		      PPM.AddRow Module_Multilanguage.kNone
		      PPM.RowTagAt(0) = -1
		      
		      While Not rs.AfterLastRow
		        
		        PPM.AddRow rs.Column("flavor_name").StringValue.DefineEncoding( Encodings.UTF8 )
		        PPM.RowTagAt(PPM.LastAddedRowIndex) = rs.Column("id").IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		      If PPM.RowCount > 0 Then
		        
		        PPM.SelectedRowIndex = 0
		        
		      End If
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Liquids(Extends LB As DesktopListbox, SearchPhrase As String)
		  Var sqlString As String = "SELECT liquid_name, id, image FROM liquids "
		  
		  If SearchPhrase.Trim.Length > 0 Then
		    sqlString = sqlString + " WHERE liquid_name LIKE '%" + SearchPhrase.ReplaceAll( " ", "%" ) + "%' "
		  End If
		  
		  sqlString = sqlString + "ORDER BY liquid_name"
		  
		  Try
		    
		    Var rs As RowSet = db.SelectSQL( sqlString )
		    
		    If rs <> Nil Then
		      
		      While Not rs.AfterLastRow
		        
		        LB.AddRow rs.Column( "liquid_name" ).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        Var pRow As New Picture( LB.RowHeight, LB.RowHeight )
		        
		        If rs.Column( "image" ).PictureValue <> Nil Then
		          
		          pRow.Graphics.ScaleToFit( rs.Column( "image" ).PictureValue )
		          
		        Else
		          
		          If Color.IsDarkMode Then
		            pRow.Graphics.ScaleToFit( Liquid_DarkMode )
		          Else
		            pRow.Graphics.ScaleToFit( Liquid_LightMode )
		          End If
		          
		        End If
		        
		        LB.RowImageAt( LB.LastAddedRowIndex ) = pRow
		        
		        LB.RowTagAt( LB.LastAddedRowIndex ) = rs.Column( "id" ).IntegerValue
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show Module_Multilanguage.kDatabaseError + EndOfLine + EndOfLine + err.Message
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_Units(Extends PPM As DesktopPopupMenu)
		  PPM.RemoveAllRows
		  
		  Try
		    
		    db.Connect
		    
		    Var rs As RowSet
		    
		    rs = db.SelectSQL(Module_Multilanguage.kSQLLoadUnits)
		    
		    If rs <> Nil Then
		      
		      While Not rs.AfterLastRow
		        
		        PPM.AddRow rs.ColumnAt(0).StringValue.DefineEncoding( Encodings.UTF8 )
		        PPM.RowTagAt(PPM.RowCount-1) = rs.ColumnAt(1).StringValue.DefineEncoding( Encodings.UTF8 )
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		      If PPM.RowCount > 0 Then
		        
		        PPM.SelectedRowIndex = 0
		        
		      End If
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaximumFlavorCount() As Integer
		  Dim rs As RowSet = db.SelectSQL("Select COUNT(liquid_id) FROM liquid_ingred WHERE theType = 0 GROUP BY liquid_id")
		  Dim X As Integer
		  
		  Try
		    
		    If rs<>Nil And Not rs.AfterLastRow Then
		      
		      While Not rs.AfterLastRow
		        
		        If X < rs.Column("COUNT(liquid_id)").IntegerValue Then
		          
		          X = rs.Column("COUNT(liquid_id)").IntegerValue
		          
		        End If
		        
		        rs.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  
		  Return X
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MesBox(theMessage As String) As Integer
		  Var d As New MessageDialog                   // declare the MessageDialog object
		  
		  d.IconType = MessageDialog.IconTypes.Caution // display warning icon
		  d.ActionButton.Caption = Module_Multilanguage.kYes
		  d.CancelButton.Visible = True                // show the Cancel button
		  d.AlternateActionButton.Visible = False       // show the "Don't Save" button
		  d.CancelButton.Caption = Module_Multilanguage.kNo
		  d.Message = theMessage
		  // d.Explanation = "If you don't save, your changes will be lost."
		  
		  Var b As MessageDialogButton                 // for handling the result
		  
		  b = d.ShowModal                              // display the dialog
		  
		  Select Case b                                // determine which button was pressed.
		  Case d.ActionButton
		    
		    Return 6
		    
		  Else
		    
		    Return 7
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MessageDialogSimple(MessageSymbol As MessageDialog.IconTypes, ActionButtonCaption As String, MessageText As String, Optional MessageExplanation As String)
		  Var mb As MessageDialogButton
		  Var md As New MessageDialog
		  
		  If MessageExplanation.Trim <> "" Then
		    
		    md.Title = MessageText
		    
		  Else
		    
		    md.Message = MessageText
		    
		  End If
		  
		  md.IconType = MessageSymbol
		  md.ActionButton.Caption = ActionButtonCaption
		  md.CancelButton.Visible = False
		  md.AlternateActionButton.Visible = False
		  md.Explanation = MessageExplanation
		  mb = md.ShowModal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgDlg(MessageString As String, Optional ExplanationString As String, ActionButtonCaption As String, MessageIcon As MessageDialog.IconTypes)
		  Var d As New MessageDialog                  // declare the MessageDialog object
		  Var b As MessageDialogButton                // for handling the result
		  d.IconType = MessageIcon  // display icon
		  d.ActionButton.Caption = ActionButtonCaption
		  d.CancelButton.Visible = False               // show the Cancel button?
		  d.AlternateActionButton.Visible = False      // show the "Don't Save" button?
		  // d.AlternateActionButton.Caption = "Don't Save"
		  d.Message = MessageString
		  d.Explanation = ExplanationString
		  
		  b = d.ShowModal                             // display the dialog
		  // Select Case b                               // determine which button was pressed.
		  // Case d.ActionButton
		  // // user pressed Save
		  // Case d.AlternateActionButton
		  // // user pressed Don't Save
		  // Case d.CancelButton
		  // // user pressed Cancel
		  // End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveFromStorage(Storage As String, ItemID As String) As Boolean
		  Select Case Storage
		    
		  Case Module_Multilanguage.kLiquids
		    
		    db.ExecuteSQL("UPDATE storage_liquid SET theValue=0 WHERE id_liquid=" + ItemID)
		    
		  Case Module_Multilanguage.kFlavors
		    
		    db.ExecuteSQL("UPDATE storage_aroma SET theValue=0 WHERE id_aroma=" + ItemID)
		    
		  Case Module_Multilanguage.kBases
		    
		    db.ExecuteSQL("UPDATE storage_base SET theValue=0 WHERE id_base=" + ItemID)
		    
		  End Select
		  
		  Try
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As InvalidArgumentException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Invalid Argument Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As IOException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "IO Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As NilObjectException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Nil Object Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As OutOfBoundsException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Out of bounds Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As RegExException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "RegEx Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As RegExSearchPatternException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "RegEx Search Pattern Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As RuntimeException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Runtime Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As ThreadAccessingUIException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Thread Accessing UI Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As ThreadAlreadyRunningException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Thread Already Running Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As TypeMismatchException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Type Missmatch Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportError(err As UnsupportedOperationException, CurrentMethod As String)
		  System.Log( System.LogLevelError, "Unsupported Operation Exception - " + err.Message + EndOfLine + _
		  "Code: " + err.ErrorNumber.ToString + EndOfLine + _
		  "Method: " + CurrentMethod + EndOfLine + _
		  "Stack: " + String.FromArray(err.Stack, EndOfLine ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RestorePosition(Extends win As DesktopWindow, Optional DoNotTouchSize As Boolean = False)
		  win.Left = App.Preferences.getIntegerValue(win.Title + " Window Left", win.Left)
		  win.Top = App.Preferences.getIntegerValue(win.Title + " Window Top", win.Top)
		  
		  If Not DoNotTouchSize Then
		    
		    win.Width = App.Preferences.getIntegerValue(win.Title + " Window Width", win.Width)
		    win.Height = App.Preferences.getIntegerValue( win.Title + " Window Height", win.Height )
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SavePosition(Extends win As DesktopWindow)
		  App.Preferences.setIntegerValue(win.Title + " Window Left", win.Left)
		  App.Preferences.setIntegerValue( win.Title + " Window Top", win.Top )
		  App.Preferences.setIntegerValue(win.Title + " Window Width", win.Width)
		  App.Preferences.setIntegerValue(win.Title + " Window Height", win.Height)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScaleToFit(Extends g As Graphics, p As Picture)
		  If p = Nil Then Return
		  
		  // -------------------------------------------------------
		  // scale picture keeping the ratio between x and y
		  // -------------------------------------------------------
		  dim CanvasWidth, CanvasHeight, PicWidth, PicHeight, ScaleWidth, ScaleHeight as int16
		  dim RatioX, RatioY,PosX, PosY as double
		  
		  CanvasWidth = g.Width
		  CanvasHeight =g.Height
		  PicWidth = p.Width
		  PicHeight = p.Height
		  RatioX = CanvasWidth / PicWidth
		  RatioY = CanvasHeight / PicHeight
		  
		  if RatioY < RatioX then
		    ScaleWidth = PicWidth * RatioY
		    ScaleHeight = PicHeight * RatioY
		    PosX = (CanvasWidth - ScaleWidth)/2
		  else
		    ScaleWidth = PicWidth * RatioX
		    ScaleHeight = PicHeight * RatioX
		    PosY = (CanvasHeight - ScaleHeight)/2
		  end if
		  
		  g.DrawPicture(p,PosX, PosY, ScaleWidth, ScaleHeight, 0, 0, PicWidth, PicHeight)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToID(Extends lst As DesktopListBox, ID As Integer)
		  If lst.RowCount > -1 And ID > -1 Then
		    
		    lst.Sort
		    
		    For X As Integer = lst.LastRowIndex DownTo 0
		      
		      If lst.RowTagAt( X ).IntegerValue = ID Then
		        
		        lst.ScrollPosition = X
		        lst.SelectedRowIndex = X
		        
		        Exit For X
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowHelp()
		  Select Case Window_Main.PagePanel_Main.SelectedPanelIndex
		    
		  Case 0
		    winHelp.lblHelp.Text = Module_Multilanguage.kHelpLiquids
		    
		  Case 1
		    
		    winHelp.lblHelp.Text = Module_Multilanguage.kHelpAroma
		    
		  Case 2
		    
		    winHelp.lblHelp.Text = Module_Multilanguage.kHelpBases
		    
		  Case 3
		    
		    winHelp.lblHelp.Text = Module_Multilanguage.kHelpDealers
		    
		  Case 4
		    
		    winHelp.lblHelp.Text = Module_Multilanguage.kHelpStorage
		    
		  End Select
		  
		  winHelp.Show
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDBImage(dbID As Integer, dbImage As Picture) As Boolean
		  If dbID <> 0 Then
		    
		    If dbImage <> Nil Then
		      
		      Var s As String
		      
		      Select Case Window_Main.PagePanel_Main.SelectedPanelIndex
		      Case 0 // Liquid
		        s = "liquid"
		      Case 1 // Aroma
		        s = "aroma"
		      Case 2 // Bases
		        s = "bases"
		      Case 3 // Dealer
		        s = "dealer"
		      End Select
		      
		      Return True
		      
		      Try
		        db.ExecuteSQL( "UPDATE " + s + " SET image=? WHERE id=?", dbImage.ToData( Picture.Formats.PNG ), dbID )
		      Catch err As DatabaseException
		        
		      Catch err As UnsupportedFormatException
		        
		      End Try
		      
		    End If
		    
		  End If
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416C69676E6D656E742028302D4C6566742C20312D43656E7465722C20322D526967687429
		Sub WriteString(Extends g As Graphics, StringToDraw As String, Left As Integer, Top As Integer, Width As Integer, Height As Integer, TextSizeMinimum As Integer, BaseLine As Integer, Alignment As Integer)
		  // Find best TextSize
		  For i As Integer = 120 DownTo TextSizeMinimum  // max font size down to min font size
		    g.FontSize = i
		    If g.TextHeight(StringToDraw, Width) <= Height Then
		      Exit For i
		    End
		  Next
		  
		  If BaseLine = 0 Then BaseLine = g.FontSize/3*2
		  
		  // Split StringToDraw into seperate Lines for centering
		  Dim Lines(-1) As String
		  Dim Words(-1) As String
		  Words = StringToDraw.Split
		  
		  If Words.LastIndex > 0 Then
		    
		    While Words.LastIndex > -1
		      
		      Dim currentTxt As String
		      
		      While Words.LastIndex>-1 And g.TextWidth(currentTxt + " " + Words(0)) < Width
		        
		        currentTxt = currentTxt + " " + Words(0)
		        Words.RemoveAt(0)
		        
		      Wend
		      
		      Lines.Add currentTxt 
		      
		    Wend
		    
		  Else
		    
		    Lines.Add Words(0)
		    
		  End If
		  
		  // Draw each Line centered
		  Dim tempX As Integer
		  Dim tempY As Integer = Top + BaseLine
		  
		  For currentLine As Integer = 0 To Lines.LastIndex
		    
		    tempX = (Width - g.TextWidth(Lines(currentLine))) * (Alignment/2)
		    
		    If tempY <= Height+Top Then
		      
		      g.DrawText(Lines(currentLine), Left + tempX, tempY)
		      tempY = tempY + g.FontSize
		      
		    Else
		      
		      g.DrawText(Lines(currentLine), Left + tempX, tempY, Width, True)
		      Exit For currentLine
		      
		    End If
		    
		  Next currentLine
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As Database
	#tag EndProperty


	#tag Constant, Name = mySQLServerTables, Type = String, Dynamic = False, Default = \"-- MySQL dump --\n-- ---------------------------------------------------------\n\n\n/*!40101 SET @OLD_CHARACTER_SET_CLIENT\x3D@@CHARACTER_SET_CLIENT */;\n/*!40101 SET @OLD_CHARACTER_SET_RESULTS\x3D@@CHARACTER_SET_RESULTS */;\n/*!40101 SET @OLD_COLLATION_CONNECTION\x3D@@COLLATION_CONNECTION */;\n/*!40014 SET @OLD_FOREIGN_KEY_CHECKS\x3D@@FOREIGN_KEY_CHECKS\x2C FOREIGN_KEY_CHECKS\x3D0 */;\n/*!40101 SET @OLD_SQL_MODE\x3D@@SQL_MODE\x2C SQL_MODE\x3D\'NO_AUTO_VALUE_ON_ZERO\' */;\n-- ---------------------------------------------------------\n\n\n-- CREATE DATABASE \"liquid_database\" -----------------------\nCREATE DATABASE IF NOT EXISTS `liquid_database` CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;\nUSE `liquid_database`;\n-- ---------------------------------------------------------\n\n\n-- CREATE TABLE \"flavors\" --------------------------------------\nCREATE TABLE `flavors`( \n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\t`flavor_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL DEFAULT \'Name\'\x2C\n\t`mixing_ratio` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL DEFAULT \'2-5%\'\x2C\n\t`ripe_time` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL DEFAULT \'0\'\x2C\n\t`flavor_description` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`flavor_rating` Int( 11 ) NOT NULL DEFAULT 0\x2C\n\t`created_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`changed_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`image` LongBlob NULL DEFAULT NULL\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 18;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"dealers_items\" --------------------------------\nCREATE TABLE `dealers_items`( \n\t`id_item` Int( 255 ) NOT NULL\x2C\n\t`theValue` Double NOT NULL DEFAULT 0\x2C\n\t`id_dealer` Int( 255 ) NOT NULL DEFAULT 0\x2C\n\t`theType` Int( 255 ) NOT NULL\x2C\n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\tPRIMARY KEY ( `id` )\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 1;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"storage\" --------------------------------------\nCREATE TABLE `storage`( \n\t`id_item` Int( 255 ) NOT NULL\x2C\n\t`theUnit` Int( 1 ) NOT NULL DEFAULT 1\x2C\n\t`theValue` Double NOT NULL DEFAULT 0\x2C\n\t`theType` Int( 1 ) NOT NULL DEFAULT 0\x2C\n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\tPRIMARY KEY ( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 1;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"dealers\" --------------------------------------\nCREATE TABLE `dealers`( \n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\t`dealer_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL DEFAULT \'Name\'\x2C\n\t`dealer_address` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`dealer_phone` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`dealer_mail` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`dealer_description` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`dealer_url` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`customer_no` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`created_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`changed_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`image` LongBlob NULL DEFAULT NULL\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 5;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"liquids_ingredients\" --------------------------\nCREATE TABLE `liquids_ingredients`( \n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\t`theType` Int( 255 ) NOT NULL DEFAULT 0\x2C\n\t`theValue` Int( 255 ) NOT NULL DEFAULT 0\x2C\n\t`liquid_id` Int( 255 ) NOT NULL DEFAULT 0\x2C\n\t`theIngredientID` Int( 255 ) NOT NULL DEFAULT 0\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 15;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"liquids\" --------------------------------------\nCREATE TABLE `liquids`( \n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\t`liquid_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL DEFAULT \'Name\'\x2C\n\t`liquid_rating` Int( 255 ) NOT NULL DEFAULT 0\x2C\n\t`liquid_description` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\t`created_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`changed_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`image` LongBlob NULL DEFAULT NULL\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 45;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"storage_units\" --------------------------------\nCREATE TABLE `storage_units`( \n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\t`name_en` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL\x2C\n\t`name_de` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 31;\n-- -------------------------------------------------------------\n\n\n-- CREATE TABLE \"bases\" ----------------------------------------\nCREATE TABLE `bases`( \n\t`id` Int( 255 ) AUTO_INCREMENT NOT NULL\x2C\n\t`base_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL\x2C\n\t`share_pg` Double NOT NULL DEFAULT 50\x2C\n\t`share_vg` Double NOT NULL DEFAULT 50\x2C\n\t`share_water` Double NOT NULL DEFAULT 0\x2C\n\t`nicotine` Double NOT NULL DEFAULT 0\x2C\n\t`created_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`changed_on` DateTime NOT NULL DEFAULT current_timestamp()\x2C\n\t`image` LongBlob NULL DEFAULT NULL\x2C\n\t`base_description` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL\x2C\n\tCONSTRAINT `unique_id` UNIQUE( `id` ) )\nCHARACTER SET \x3D utf8mb4\nCOLLATE \x3D utf8mb4_uca1400_ai_ci\nENGINE \x3D InnoDB\nAUTO_INCREMENT \x3D 6;\n-- -------------------------------------------------------------\n\n\n-- Dump data of \"flavors\" ----------------------------------\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"dealers_items\" ----------------------------\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"storage\" ----------------------------------\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"dealers\" ----------------------------------\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"liquids_ingredients\" ----------------------\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"liquids\" ----------------------------------\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"storage_units\" ----------------------------\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'16\'\x2C \'Unit(s)\'\x2C \'Einheit(en)\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'17\'\x2C \'fl oz\'\x2C \'Flu\xCC\x88ssigunze\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'18\'\x2C \'ml\'\x2C \'ml\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'19\'\x2C \'l\'\x2C \'l\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'20\'\x2C \'mg\'\x2C \'mg\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'21\'\x2C \'g\'\x2C \'g\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'22\'\x2C \'lb\'\x2C \'Pfund\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'23\'\x2C \'kg\'\x2C \'kg\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'24\'\x2C \'Package(s)\'\x2C \'Packet(e)\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'25\'\x2C \'Bottle(s)\'\x2C \'Flasche(n)\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'26\'\x2C \'Ounce(s)\'\x2C \'Unze(n)\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'27\'\x2C \'Gramm(s)\'\x2C \'Gramm\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'28\'\x2C \'Gallon(s)\'\x2C \'Gallone(n)\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'29\'\x2C \'Box(es)\'\x2C \'Karton(s)\' );\nINSERT INTO `storage_units`(`id`\x2C`name_en`\x2C`name_de`) VALUES ( \'30\'\x2C \'Pallet(s)\'\x2C \'Palette(n)\' );\n-- ---------------------------------------------------------\n\n\n-- Dump data of \"bases\" ------------------------------------\n-- ---------------------------------------------------------\n\n\n/*!40101 SET SQL_MODE\x3D@OLD_SQL_MODE */;\n/*!40014 SET FOREIGN_KEY_CHECKS\x3D@OLD_FOREIGN_KEY_CHECKS */;\n/*!40101 SET CHARACTER_SET_CLIENT\x3D@OLD_CHARACTER_SET_CLIENT */;\n/*!40101 SET CHARACTER_SET_RESULTS\x3D@OLD_CHARACTER_SET_RESULTS */;\n/*!40101 SET COLLATION_CONNECTION\x3D@OLD_COLLATION_CONNECTION */;\n-- ---------------------------------------------------------", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SQLiteTables, Type = String, Dynamic = False, Default = \"-- ------------------------------------------\n-- Dump of \"bases\"\n-- ------------------------------------------\n\nCREATE TABLE \"bases\"(\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\n\t\"base_name\" Text NOT NULL DEFAULT \'Name\'\x2C\n\t\"share_pg\" Double NOT NULL DEFAULT 50\x2C\n\t\"share_vg\" Double NOT NULL DEFAULT 50\x2C\n\t\"share_water\" Double NOT NULL DEFAULT 0\x2C\n\t\"nicotine\" Double NOT NULL DEFAULT 0\x2C\n\t\"created_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"changed_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"image\" BLOB DEFAULT NULL\x2C\n\t\"base_description\" Text DEFAULT NULL\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"dealers\"\n-- ------------------------------------------\n\nCREATE TABLE \"dealers\"(\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\n\t\"dealer_name\" Text NOT NULL DEFAULT \'Name\'\x2C\n\t\"dealer_address\" Text DEFAULT NULL\x2C\n\t\"dealer_phone\" Text DEFAULT NULL\x2C\n\t\"dealer_mail\" Text DEFAULT NULL\x2C\n\t\"dealer_description\" Text DEFAULT NULL\x2C\n\t\"dealer_url\" Text DEFAULT NULL\x2C\n\t\"customer_no\" Text DEFAULT NULL\x2C\n\t\"created_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"changed_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"image\" BLOB DEFAULT NULL\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"dealers_items\"\n-- ------------------------------------------\n\nCREATE TABLE \"dealers_items\"(\n\t\"id_item\" Integer NOT NULL\x2C\n\t\"theValue\" Double NOT NULL DEFAULT 0\x2C\n\t\"id_dealer\" Integer NOT NULL DEFAULT 0\x2C\n\t\"theType\" Integer NOT NULL\x2C\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"flavors\"\n-- ------------------------------------------\n\nCREATE TABLE \"flavors\"(\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\n\t\"flavor_name\" Text NOT NULL DEFAULT \'Name\'\x2C\n\t\"mixing_ratio\" Text DEFAULT \'2-5%\'\x2C\n\t\"ripe_time\" Text NOT NULL DEFAULT \'2\'\x2C\n\t\"flavor_description\" Text DEFAULT NULL\x2C\n\t\"flavor_rating\" Integer NOT NULL DEFAULT 0\x2C\n\t\"created_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"changed_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"image\" BLOB DEFAULT NULL\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"liquids\"\n-- ------------------------------------------\n\nCREATE TABLE \"liquids\"(\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\n\t\"liquid_name\" Text NOT NULL DEFAULT \'Name\'\x2C\n\t\"liquid_rating\" Integer NOT NULL DEFAULT 0\x2C\n\t\"liquid_description\" Text DEFAULT NULL\x2C\n\t\"created_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"changed_on\" DateTime NOT NULL DEFAULT current_timestamp\x2C\n\t\"image\" BLOB DEFAULT NULL\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"liquids_ingredients\"\n-- ------------------------------------------\n\nCREATE TABLE \"liquids_ingredients\"(\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\n\t\"theType\" Integer NOT NULL DEFAULT 0\x2C\n\t\"theValue\" Integer NOT NULL DEFAULT 0\x2C\n\t\"liquid_id\" Integer NOT NULL DEFAULT 0\x2C\n\t\"theIngredientID\" Integer NOT NULL DEFAULT 0\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"storage\"\n-- ------------------------------------------\n\nCREATE TABLE \"storage\"(\n\t\"id_item\" Integer NOT NULL\x2C\n\t\"theUnit\" Integer NOT NULL DEFAULT 1\x2C\n\t\"theValue\" Double NOT NULL DEFAULT 0\x2C\n\t\"theType\" Integer NOT NULL DEFAULT 0\x2C\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\n-- ------------------------------------------\n-- Dump of \"storage_units\"\n-- ------------------------------------------\n\nCREATE TABLE \"storage_units\"(\n\t\"id\" Integer NOT NULL PRIMARY KEY AUTOINCREMENT\x2C\n\t\"name_en\" Text NOT NULL DEFAULT \'en_EN\'\x2C\n\t\"name_de\" Text NOT NULL DEFAULT \'de_DE\'\x2C\nCONSTRAINT \"unique_id\" UNIQUE ( id ) );\n\n\nBEGIN;\n\nINSERT INTO \"storage_units\" (\"id\"\x2C\"name_en\"\x2C\"name_de\") VALUES \n( 16\x2C \'Unit(s)\'\x2C \'Einheit(en)\' )\x2C\n( 17\x2C \'fl oz\'\x2C \'Flu\xCC\x88ssigunze\' )\x2C\n( 18\x2C \'ml\'\x2C \'ml\' )\x2C\n( 19\x2C \'l\'\x2C \'l\' )\x2C\n( 20\x2C \'mg\'\x2C \'mg\' )\x2C\n( 21\x2C \'g\'\x2C \'g\' )\x2C\n( 22\x2C \'lb\'\x2C \'Pfund\' )\x2C\n( 23\x2C \'kg\'\x2C \'kg\' )\x2C\n( 24\x2C \'Package(s)\'\x2C \'Packet(e)\' )\x2C\n( 25\x2C \'Bottle(s)\'\x2C \'Flasche(n)\' )\x2C\n( 26\x2C \'Ounce(s)\'\x2C \'Unze(n)\' )\x2C\n( 27\x2C \'Gramm(s)\'\x2C \'Gramm\' )\x2C\n( 28\x2C \'Gallon(s)\'\x2C \'Gallone(n)\' )\x2C\n( 29\x2C \'Box(es)\'\x2C \'Karton(s)\' )\x2C\n( 30\x2C \'Pallet(s)\'\x2C \'Palette(n)\' );\n\n\n\nCOMMIT;", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
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
		#tag ViewProperty
			Name="db"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Database"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
