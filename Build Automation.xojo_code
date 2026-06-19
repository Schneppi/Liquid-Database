#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin IDEScriptBuildStep SetShortVersion , AppliesTo = 0, Architecture = 0, Target = 0
					Dim version As String
					version = PropertyValue("App.MajorVersion") + "." + _
					PropertyValue("App.MinorVersion") + "." + _
					PropertyValue("App.BugVersion")
					
					PropertyValue("App.ShortVersion") = version
				End
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
