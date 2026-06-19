#tag Class
Protected Class Class_Preferences
	#tag Method, Flags = &h0
		Sub Constructor(bundleID as String)
		  Dim prefFile As FolderItem
		  prefDB = New Class_SQLiteDatabase
		  prefFile = SpecialFolder.ApplicationData.Child(bundleID)
		  
		  #Pragma BreakOnExceptions False
		  Try
		    
		    prefFile.CreateFolder
		    
		  Catch err As IOException
		    // Kann passieren wenn der Ordner schon existiert...
		  End Try
		  #Pragma BreakOnExceptions True
		  
		  Try
		    
		    prefFile = SpecialFolder.ApplicationData.Child( bundleID ).Child( bundleID + ".preferences" )
		    
		    prefDB.DatabaseFile = prefFile
		    
		    if not prefFile.Exists then
		      if CreatePrefsFile = False then
		        MessageDialogSimple(MessageDialog.IconTypes.Caution,"Ok", "Konnte Einstellungen Datei nicht erstellen.")
		        exit Sub
		      end if
		    end if
		    
		    prefDB.Connect
		    
		  Catch err As DatabaseException
		    
		    prefDB.ReportError(err, CurrentMethodName)
		    
		    MessageDialogSimple(MessageDialog.IconTypes.Caution,"Ok","Konnte nicht auf Einstellungen Datei zugreiffen.")
		    
		  Catch err As RuntimeException
		    
		    ReportError(err, CurrentMethodName)
		    
		  Catch err As IOException
		    
		    ReportError(err, CurrentMethodName)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function createPrefsFile() As Boolean
		  Try
		    
		    prefDB.CreateDatabase
		    
		    prefDB.ExecuteSQL("CREATE TABLE tblPreferences(id integer PRIMARY KEY AUTOINCREMENT,key varchar,value varchar);")
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    prefDB.ReportError(err, CurrentMethodName)
		    
		  Catch err As RuntimeException
		    
		    ReportError(err, CurrentMethodName)
		    
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteValue(key as String)
		  Try
		    
		    Dim rs As RowSet
		    
		    // Check the database is connected
		    prefDB.Connect
		    
		    // Get any records where key already exists
		    rs = prefDB.SelectSQL( "SELECT * FROM tblPreferences WHERE key=?", key.Uppercase)
		    
		    If rs.RowCount = 0 Then
		      Raise New KeyNotFoundException
		    Else
		      prefDB.ExecuteSQL( "DELETE FROM tblPreferences WHERE key=?", _
		      key.Uppercase)
		    End If
		    
		  Catch err As DatabaseException
		    
		    prefDB.ReportError(err, CurrentMethodName)
		    
		    If DebugBuild Then
		      MessageDialogSimple(MessageDialog.IconTypes.Stop,"Ok",err.Message)
		    End If
		    
		  Catch err As RuntimeException
		    
		    ReportError(err, CurrentMethodName)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBooleanValue(key as String, Optional default as Boolean) As Boolean
		  Return (GetValue(key,default)="TRUE")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getColorValue(key as variant, Optional default as Color) As color
		  dim v as Variant = (GetValue(key,default))
		  Return v.ColorValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDoubleValue(key as string, Optional default as Double) As Double
		  Return CDbl(GetValue(key,default))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getIntegerValue(key as string, Optional default as Integer) As Integer
		  Return CDbl(GetValue(key,default))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPictureValue(key as String, Optional default as picture) As Picture
		  dim tmpDef as Variant
		  
		  if default <> Nil then
		    tmpDef = EncodeBase64(default.ToData(Picture.Formats.PNG))
		  end  if
		  
		  return Picture.FromData(DecodeBase64(getValue(key,tmpDef)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSingleValue(key as string, Optional default as Single) As Single
		  Return CDbl(GetValue(key,default))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getStringValue(key as string, Optional default as String) As String
		  Return GetValue(key,default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getValue(key as String, Optional default as Variant) As String
		  Try
		    
		    Dim rs As RowSet
		    
		    // Check the database is connected
		    prefDB.Connect
		    
		    // Get any records where key already exists
		    rs = prefDB.SelectSQL( "SELECT * FROM tblPreferences WHERE key=?", _
		    key.Uppercase)
		    
		    If rs.RowCount = 0 Then
		      If default <> Nil Then
		        Return default
		      Else
		        Raise New KeyNotFoundException
		      End If
		    Else
		      Return rs.Column("value").StringValue
		    End If
		    
		  Catch err As DatabaseException
		    
		    prefDB.ReportError(err, CurrentMethodName)
		    
		    If DebugBuild Then
		      MessageDialogSimple(MessageDialog.IconTypes.Stop,"Ok",err.Message)
		    End If
		    
		  Catch err As RuntimeException
		    
		    ReportError(err, CurrentMethodName)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hasKey(key as String) As Boolean
		  Try
		    
		    Dim rs As RowSet
		    
		    // Check the database is connected
		    prefDB.Connect
		    
		    // Get any records where key already exists
		    rs = prefDB.SelectSQL( "SELECT * FROM tblPreferences WHERE key=?", _
		    key.Uppercase)
		    
		    If rs.RowCount = 0 Then
		      Return False
		    Else
		      Return True
		    End If
		    
		  Catch err As DatabaseException
		    
		    prefDB.ReportError(err, CurrentMethodName)
		    
		    If DebugBuild Then
		      MessageDialogSimple(MessageDialog.IconTypes.Stop,"Ok",err.Message)
		    End If
		    
		  Catch err As RuntimeException
		    
		    ReportError(err, CurrentMethodName)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBooleanValue(key as String, value as Boolean)
		  SetValue(key,str(value))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setColorValue(key as String, value as Color)
		  SetValue(key,value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDoubleValue(key as String, value as Double)
		  SetValue(key,value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setIntegerValue(key as String, value as Integer)
		  SetValue(key,str(value))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPictureValue(key as string, value as Picture)
		  SetValue(key,EncodeBase64(value.ToData(Picture.Formats.PNG)))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSingleValue(key as String, value as single)
		  SetValue(key,value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setStringValue(key as String, value as String)
		  SetValue(key,value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setValue(key as string, value as variant)
		  Try
		    
		    Dim rs As RowSet
		    
		    // Check the database is connected
		    prefDB.Connect
		    
		    // Get any records where key already exists
		    rs = prefDB.SelectSQL( "SELECT * FROM tblPreferences WHERE key=?", _
		    key.Uppercase)
		    
		    // If the key does not already exist
		    If rs.RowCount = 0 Then
		      prefDB.ExecuteSQL("INSERT INTO tblPreferences (key,value) VALUES (?,?)", _
		      key.Uppercase, _
		      Str(value))
		      
		    Else
		      // Otherwise if it does exists update the value with the new value
		      prefDB.ExecuteSQL( "UPDATE tblPreferences SET value=? WHERE key=?", _
		      Str(value), _
		      key.Uppercase)
		    End If
		    
		    RaiseEvent PreferencesChanged
		    
		  Catch err As DatabaseException
		    
		    prefDB.ReportError(err, CurrentMethodName)
		    
		    If DebugBuild Then
		      MessageDialogSimple(MessageDialog.IconTypes.Stop,"Ok",err.Message)
		    End If
		    
		  Catch err As RuntimeException
		    
		    ReportError(err, CurrentMethodName)
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event PreferencesChanged()
	#tag EndHook


	#tag Property, Flags = &h21
		Private prefDB As Class_SQLiteDatabase
	#tag EndProperty


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
	#tag EndViewBehavior
End Class
#tag EndClass
