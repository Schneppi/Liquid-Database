#tag Module
Protected Module Module_Multilanguage
	#tag Constant, Name = kAbout, Type = String, Dynamic = True, Default = \"About Liquid Database", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cber Liquid Datenbank"
	#tag EndConstant

	#tag Constant, Name = kAddFlavor, Type = String, Dynamic = True, Default = \"Add Flavor", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aroma hinzuf\xC3\xBCgen"
	#tag EndConstant

	#tag Constant, Name = kAmount, Type = String, Dynamic = True, Default = \"Amount (%)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Menge (%)"
	#tag EndConstant

	#tag Constant, Name = kAmountToCreate, Type = String, Dynamic = True, Default = \"Amount to create", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Gesamt Menge eLiquid"
	#tag EndConstant

	#tag Constant, Name = kand, Type = String, Dynamic = True, Default = \"and", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"und"
	#tag EndConstant

	#tag Constant, Name = kAppName, Type = String, Dynamic = True, Default = \"Liquid Database", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Liquid Datenbank"
	#tag EndConstant

	#tag Constant, Name = kBackupDatabase, Type = String, Dynamic = True, Default = \"Backup your Database...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Backup Ihrer Datenbank erstellen..."
	#tag EndConstant

	#tag Constant, Name = kBackupNotSuccessfull, Type = String, Dynamic = True, Default = \"The backup of your database was unsuccessful.\n\nThe app will quit to avoid data loss. Please try again or contact the service at https://www.schneppmueller.de.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die Sicherung Ihrer Datenbank war nicht erfolgreich.\n\nDie App wird beendet um Datenverlust zu vermeiden. Bitte versuchen Sie es erneut oder kontaktieren Sie den Service unter https://www.schneppmueller.de."
	#tag EndConstant

	#tag Constant, Name = kBase, Type = String, Dynamic = True, Default = \"Base", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Basis"
	#tag EndConstant

	#tag Constant, Name = kBases, Type = String, Dynamic = True, Default = \"Bases", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Basen"
	#tag EndConstant

	#tag Constant, Name = kCantAccessSettings, Type = String, Dynamic = True, Default = \"Can\'t access Settings File!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es konnte nicht auf die Einstellungen Datei zugegriffen werden!"
	#tag EndConstant

	#tag Constant, Name = kCantCreateSettingsFile, Type = String, Dynamic = True, Default = \"Can\'t create a Settings File!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es konnte keine Datei f\xC3\xBCr die Einstellungen erstellt werden!"
	#tag EndConstant

	#tag Constant, Name = kChangeDBConnection, Type = String, Dynamic = True, Default = \"Save Database-Settings and quit the App", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datenbank-Einstellungen sichern und App beenden"
	#tag EndConstant

	#tag Constant, Name = kChangeImage, Type = String, Dynamic = True, Default = \"Change Image...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bild \xC3\xA4ndern..."
	#tag EndConstant

	#tag Constant, Name = kConnect, Type = String, Dynamic = True, Default = \"Connect", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verbinden"
	#tag EndConstant

	#tag Constant, Name = kCustomerNumber, Type = String, Dynamic = True, Default = \"Customer Number", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Kundennummer"
	#tag EndConstant

	#tag Constant, Name = kDatabaseBackupRecommended, Type = String, Dynamic = True, Default = \"Recommended  Database Backup", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datenbank Sicherung empfohlen"
	#tag EndConstant

	#tag Constant, Name = kDatabaseBackupSuccessfull, Type = String, Dynamic = True, Default = \"Successfully created a backup of your Database.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datenbank Backup erfolgreich erstellt."
	#tag EndConstant

	#tag Constant, Name = kDatabaseError, Type = String, Dynamic = True, Default = \"There was an error while trying to access the server or database:", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fehler bei Zugriff auf Datenbank Server oder Datenbank:"
	#tag EndConstant

	#tag Constant, Name = kDatabaseRestoreSuccessfull, Type = String, Dynamic = True, Default = \"Successfully restored your Datase!\n\nThe App will now quit and use the restored Database the next time you start the App.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ihre Datenbank wurde erfolgreich wiederhergestellt!\n\nDas Programm wird sich jetzt beenden. Bei Ihrem n\xC3\xA4chsten Start des Programms\x2C wird dieses die wiederhergestellte Datenbank verwenden."
	#tag EndConstant

	#tag Constant, Name = kDatabaseStructureChanged, Type = String, Dynamic = True, Default = \"With this version the Liquid database structure is changed\x2C therefore a backup of your database is recommended. This backup is based on the previous database structure and can be used in previous versions of the app for recovery.\nIf there is an error in the database structure change and your data is not being migrated to this version of the app\x2C please use a TimeMachine recovery to go back to the previous version of the app and use this backup to recover your data.\n\nIf the migration of your data into the current version of the app was successful\x2C you can always create more backups from the $1 - $2 menu and protect your data from loss in the future. However\x2C these backups can not be used in earlier versions of the app.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit dieser Version wird die Liquid Datenbank Struktur ver\xC3\xA4ndert\x2C daher wird eine Sicherung Ihrer Datenbank empfohlen. Diese Sicherung basiert auf der bisherigen Datenbankstruktur und kann in vorherigen Versionen der App f\xC3\xBCr die Wiederherstellung verwendet werden.\nSollte ein Fehler bei der \xC3\x84nderung der Datenbank Struktur auftreten und Ihre Daten werden nicht in diese Version der App migriert\x2C gehen Sie bitte mittels einer TimeMachine Wiederherstellung zur\xC3\xBCck auf die vorherige Version der App und nutzen Sie diese Sicherung zur Wiederherstellung Ihrer Daten.\n\nWenn die Migration Ihrer Daten in aktuelle Version der App erfolgreich war\x2C k\xC3\xB6nnen Sie jederzeit \xC3\xBCber das $1 - $2 Men\xC3\xBC weitere Sicherungen erstellen und Ihre Daten auch zuk\xC3\xBCnftig vor Verlust sch\xC3\xBCtzen. Diese Sicherungen k\xC3\xB6nnen jedoch nicht in fr\xC3\xBCheren Versionen der App verwendet werden."
	#tag EndConstant

	#tag Constant, Name = kDealer, Type = String, Dynamic = True, Default = \"Distributor", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"H\xC3\xA4ndler"
	#tag EndConstant

	#tag Constant, Name = kDealers, Type = String, Dynamic = True, Default = \"Distributors", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"H\xC3\xA4ndler"
	#tag EndConstant

	#tag Constant, Name = kDelete, Type = String, Dynamic = True, Default = \"Delete", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Entfernen"
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = True, Default = \"Description", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Beschreibung"
	#tag EndConstant

	#tag Constant, Name = kDescriptionStorage, Type = String, Dynamic = True, Default = \"Every Liquid\x2C Aroma and Base in which you have entered into the Field \"In Storage\" a Value greater then 0\x2C will automatically be added to your Storage.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jedes Liquid\x2C Aroma und jede Basis in dem Sie im Feld \"Auf Lager\" einen Wert der gr\xC3\xB6\xC3\x9Fer ist als 0 eingegeben haben\x2C erscheint automatisch in Ihrem Lager."
	#tag EndConstant

	#tag Constant, Name = kDropImageHere, Type = String, Dynamic = True, Default = \"Drop image here", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bild hier ablegen"
	#tag EndConstant

	#tag Constant, Name = keJuiceRecipeCalculator, Type = String, Dynamic = True, Default = \"eJuice Recipe Calculator and PDF Recipe Creator", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"eLiquid Rezept Rechner und PDF Rezept Erstellung"
	#tag EndConstant

	#tag Constant, Name = kEmpty, Type = String, Dynamic = True, Default = \"Empty", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Leer"
	#tag EndConstant

	#tag Constant, Name = kExport, Type = String, Dynamic = True, Default = \"Export...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Exportieren..."
	#tag EndConstant

	#tag Constant, Name = kExportSelectedRecipesToCSV, Type = String, Dynamic = True, Default = \"Export selected Recipe(s) to CSV File...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ausgew\xC3\xA4hlte(s) Rezept(e) in CSV-Datei exportieren..."
	#tag EndConstant

	#tag Constant, Name = kFaultyServerSettings, Type = String, Dynamic = True, Default = \"A connection to the server could not be established. Please check the connection settings and ensure that the server is reachable.", Scope = Public
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Eine Verbindung zum Server konnte nicht hergestellt werden. Bitte pr\xC3\xBCfen Sie die Verbindungseinstellungen und stellen Sie sicher das der Server erreichbar ist."
	#tag EndConstant

	#tag Constant, Name = kFile, Type = String, Dynamic = True, Default = \"File", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei"
	#tag EndConstant

	#tag Constant, Name = kFileAlreadyExist, Type = String, Dynamic = True, Default = \"File already exist!\n\nYou can\'t overwrite an existing file. Please choose another Filename for your Database backup.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei existiert bereits!\n\nSie k\xC3\xB6nnen keine vorhandene Datei \xC3\xBCberschreiben. Bitte w\xC3\xA4hlen Sie einen neuen Namen f\xC3\xBCr Ihr Datenbank Backup."
	#tag EndConstant

	#tag Constant, Name = kFileNotFound, Type = String, Dynamic = True, Default = \"File not found!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei nicht gefunden!"
	#tag EndConstant

	#tag Constant, Name = kFlavor, Type = String, Dynamic = True, Default = \"Flavor", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aroma"
	#tag EndConstant

	#tag Constant, Name = kFlavorings, Type = String, Dynamic = True, Default = \"Flavoring(s)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aroma/Aromen"
	#tag EndConstant

	#tag Constant, Name = kFlavors, Type = String, Dynamic = True, Default = \"Flavors", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aromen"
	#tag EndConstant

	#tag Constant, Name = kFollowingIngredientsWillBeNeededForThisRecipe, Type = String, Dynamic = True, Default = \"For %AMOUNT%ml of %LIQUIDNAME%\x2C you will need the following amount of each ingredient:", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"F\xC3\xBCr %AMOUNT%ml %LIQUIDNAME%\x2C werden folgende Mengen an Zutaten ben\xC3\xB6tigt:"
	#tag EndConstant

	#tag Constant, Name = kGroupBy, Type = String, Dynamic = True, Default = \"Group by", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Gruppieren nach"
	#tag EndConstant

	#tag Constant, Name = kHelp, Type = String, Dynamic = True, Default = \"Help", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Hilfe"
	#tag EndConstant

	#tag Constant, Name = kHelpAroma, Type = String, Dynamic = True, Default = \"In this list you can collect your Flavors. For each Flavor you can enter the mixing ratio relative to the Base and the recommended ripe time.\n\nYou can define custom images / icons for your Flavors. Simply drag an image onto the Liquid Database logo in the lower right window.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"In dieser Liste k\xC3\xB6nnen Sie Ihre Aromen sammeln. Zu jedem Aroma k\xC3\xB6nnen Sie das Mischverh\xC3\xA4ltnis im Verh\xC3\xA4ltnis zur Basis und die empfohlene Reifezeit eintragen.\n\nSie k\xC3\xB6nnen zu Ihren Aromen individuelle Bilder/Symbole hinterlegen. Ziehen Sie dazu einfach ein Bild auf das Liquid Datenbank Logo\x2C im Fenster unten rechts."
	#tag EndConstant

	#tag Constant, Name = kHelpBases, Type = String, Dynamic = True, Default = \"In your list of Bases you can collect Bases. For each Base you can define the Propylene Glycol\x2C the Vegetable Glycerin and the Water share. Similarly\x2C the proportion of Nicotine can be stored.\n\nYou can define custom images / icons to your Bases. Simply drag an image onto the Liquid Database logo in the lower right window.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"In der Liste der Basen k\xC3\xB6nnen Sie Ihre Basen sammeln. Zu jeder Basis k\xC3\xB6nnen Sie den Propylenglykol\x2C den Vegetable Glycerin und den Wasser Anteil hinterlegen. Ebenso kann der Anteil an Nikotin gespeichert werden.\n\nSie k\xC3\xB6nnen zu Ihren Basen individuelle Bilder/Symbole hinterlegen. Ziehen Sie dazu einfach ein Bild auf das Liquid Datenbank Logo\x2C im Fenster unten rechts."
	#tag EndConstant

	#tag Constant, Name = kHelpDealers, Type = String, Dynamic = True, Default = \"In the list of Distributors can collect Merchants where you buy your Liquids\x2C Flavors and Bases. So you have quick access to the most important information when you need them.\n\nYou can define custom images / icons for your Distributors. Simply drag an image onto the Liquid Database logo in the lower right window.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"In der Liste der H\xC3\xA4ndler k\xC3\xB6nnen Sie H\xC3\xA4ndler sammeln bei denen Sie Ihre Liquids\x2C Aromen und Basen kaufen. So haben Sie schnellen Zugriff auf die wichtigsten Informationen\x2C wenn Sie sie ben\xC3\xB6tigen.\n\nSie k\xC3\xB6nnen zu Ihren H\xC3\xA4ndlern individuelle Bilder/Symbole hinterlegen. Ziehen Sie dazu einfach ein Bild auf das Liquid Datenbank Logo\x2C im Fenster unten rechts."
	#tag EndConstant

	#tag Constant, Name = kHelpDoubleClickToLoadItem, Type = String, Dynamic = True, Default = \"Double Click on an Item to edit it.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Klicken Sie einen Artikel doppelt um diesen zu bearbeiten."
	#tag EndConstant

	#tag Constant, Name = kHelpLiquids, Type = String, Dynamic = True, Default = \"In your List of Liquids you can collect your pre made Liquids and recipes for your own blends. Flavors\x2C Bases and Distributors from your lists\x2C can be set in the corresponding fields.\n\nYou can add custom images / icons to your liquids. Simply drag an image onto the Liquid Database Logo in the lower right corner of the window.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"In Ihrer Liquids Liste k\xC3\xB6nnen Sie Ihre vorgefertigten Liquids und Rezepte f\xC3\xBCr eigene Mischungen sammeln. Aromen\x2C Basen und H\xC3\xA4ndler aus Ihren Listen\x2C sind in entsprechenden Feldern einstellbar.\n\nSie k\xC3\xB6nnen zu Ihren Liquids individuelle Bilder/Symbole hinterlegen. Ziehen Sie dazu einfach ein Bild auf das Liquid Datenbank Logo\x2C im Fenster unten rechts."
	#tag EndConstant

	#tag Constant, Name = kHelpStorage, Type = String, Dynamic = True, Default = \"If you enter a value in the \"Stock\" field for a liquid\x2C flavoring\x2C or base\x2C that item appears in the inventory.\n\nIf you remove an item from the inventory\x2C the item\'s stock value is set to zero\x2C but the item itself is not removed from your database.\n\nDouble-clicking an item in the inventory opens the detailed view for that item.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wenn Sie zu einem Liquid\x2C Aroma oder einer Base einen Wert in das Lager Feld eintragen\x2C erscheint dieser Artikel im Lager.\n\nEntfernen Sie einen Artikel aus dem Lager\x2C wird der Lager Wert dieses Artikels auf Null gesetzt\x2C nicht aber der Arikel aus Ihrer Datenbank entfernt.\n\nEin Doppelklick auf einen Artikel im Lager \xC3\xB6ffnet die Detailansicht dieses Artikels."
	#tag EndConstant

	#tag Constant, Name = kIngredient, Type = String, Dynamic = True, Default = \"Ingredient", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bestandteile"
	#tag EndConstant

	#tag Constant, Name = kInStorage, Type = String, Dynamic = True, Default = \"In Storage", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Auf Lager"
	#tag EndConstant

	#tag Constant, Name = kItem, Type = String, Dynamic = True, Default = \"Item", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Artikel"
	#tag EndConstant

	#tag Constant, Name = kLangCode, Type = String, Dynamic = True, Default = \"en", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"de"
	#tag EndConstant

	#tag Constant, Name = kLiquids, Type = String, Dynamic = True, Default = \"Liquids", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Liquids"
	#tag EndConstant

	#tag Constant, Name = kMail, Type = String, Dynamic = True, Default = \"Mail", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Email"
	#tag EndConstant

	#tag Constant, Name = kMainWindow, Type = String, Dynamic = True, Default = \"Main Window", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Hauptfenster"
	#tag EndConstant

	#tag Constant, Name = kmg, Type = String, Dynamic = True, Default = \"mg", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"mg"
	#tag EndConstant

	#tag Constant, Name = kmySQLServerAddress, Type = String, Dynamic = True, Default = \"mySQL Server Address", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"mySQL Server Adresse"
	#tag EndConstant

	#tag Constant, Name = kName, Type = String, Dynamic = True, Default = \"Name", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name"
	#tag EndConstant

	#tag Constant, Name = kNewBase, Type = String, Dynamic = True, Default = \"New Base...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neue Basis..."
	#tag EndConstant

	#tag Constant, Name = kNewDealer, Type = String, Dynamic = True, Default = \"New Distributor...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neuer H\xC3\xA4ndler..."
	#tag EndConstant

	#tag Constant, Name = kNewFlavor, Type = String, Dynamic = True, Default = \"New Flavor...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neues Aroma..."
	#tag EndConstant

	#tag Constant, Name = kNewLiquid, Type = String, Dynamic = True, Default = \"New Liquid...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Neues Liquid..."
	#tag EndConstant

	#tag Constant, Name = kNicotin, Type = String, Dynamic = True, Default = \"Nicotine (mg)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nikotin (mg)"
	#tag EndConstant

	#tag Constant, Name = kNicotine, Type = String, Dynamic = True, Default = \"Nicotine", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nikotin"
	#tag EndConstant

	#tag Constant, Name = kNicotineBase, Type = String, Dynamic = True, Default = \"Nicotine Base", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nikotin Basis"
	#tag EndConstant

	#tag Constant, Name = kNo, Type = String, Dynamic = True, Default = \"No", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nein"
	#tag EndConstant

	#tag Constant, Name = kNoDontBackupMyData, Type = String, Dynamic = True, Default = \"No backup required", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Kein Backup erforderlich"
	#tag EndConstant

	#tag Constant, Name = kNone, Type = String, Dynamic = True, Default = \"none", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"kein"
	#tag EndConstant

	#tag Constant, Name = kNotes, Type = String, Dynamic = True, Default = \"Notes", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Notizen"
	#tag EndConstant

	#tag Constant, Name = kNumber, Type = String, Dynamic = True, Default = \"Number", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Anzahl"
	#tag EndConstant

	#tag Constant, Name = kOr, Type = String, Dynamic = True, Default = \"or", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"oder"
	#tag EndConstant

	#tag Constant, Name = kPassword, Type = String, Dynamic = True, Default = \"Password", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Passwort"
	#tag EndConstant

	#tag Constant, Name = kPercentOfTotal, Type = String, Dynamic = True, Default = \"% of total", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"% von Gesamt"
	#tag EndConstant

	#tag Constant, Name = kPGOrVGWithNicotine, Type = String, Dynamic = True, Default = \"PG or VG with Nicotine", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"PG oder VG inklusive Nikotin"
	#tag EndConstant

	#tag Constant, Name = kPGOrVGWithoutNicotine, Type = String, Dynamic = True, Default = \"PG or VG (without Nicotine)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"PG oder VG (ohne Nikotin)"
	#tag EndConstant

	#tag Constant, Name = kPhone, Type = String, Dynamic = True, Default = \"Phone", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Telefon"
	#tag EndConstant

	#tag Constant, Name = kPleaseEnterName, Type = String, Dynamic = True, Default = \"Please enter a Name", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bitte geben Sie einen Namen ein"
	#tag EndConstant

	#tag Constant, Name = kPostalAddress, Type = String, Dynamic = True, Default = \"Postal Address", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Adresse"
	#tag EndConstant

	#tag Constant, Name = kPrintLabel, Type = String, Dynamic = True, Default = \"Print Label...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Label drucken..."
	#tag EndConstant

	#tag Constant, Name = kPrintRecipe, Type = String, Dynamic = True, Default = \"Print Recipe...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Rezept drucken..."
	#tag EndConstant

	#tag Constant, Name = kProperties, Type = String, Dynamic = True, Default = \"Properties", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Eigenschaften"
	#tag EndConstant

	#tag Constant, Name = kQuestionDeleteImage, Type = String, Dynamic = True, Default = \"Do you really want to remove the Image\?\n\nThis action can\'t be undone.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"M\xC3\xB6chten Sie das Bild wirklich entfernen\?\n\nDiese aktion kann nicht r\xC3\xBCckg\xC3\xA4ngig gemacht werden."
	#tag EndConstant

	#tag Constant, Name = kQuestionRemoveFromStorage, Type = String, Dynamic = True, Default = \"The Number of every selected Article in the Storage\x2C will be set to 0.\n\nAre you sure\?", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die im Lager vorhandene Menge aller ausgew\xC3\xA4hlten Artikel wird auf 0 gesetzt.\n\nSind Sie sich sicher\?"
	#tag EndConstant

	#tag Constant, Name = kQuit, Type = String, Dynamic = True, Default = \"Quit", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Beenden"
	#tag EndConstant

	#tag Constant, Name = kRating, Type = String, Dynamic = True, Default = \"Rating", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bewertung"
	#tag EndConstant

	#tag Constant, Name = kRecipe, Type = String, Dynamic = True, Default = \"Recipe", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Rezept"
	#tag EndConstant

	#tag Constant, Name = kRecommendedMixingRatio, Type = String, Dynamic = True, Default = \"Recommended Mixing Ratio (%)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Empfohlener Anteil in Mischung (%)"
	#tag EndConstant

	#tag Constant, Name = kRemoveFlavor, Type = String, Dynamic = True, Default = \"Remove Flavor", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aroma entfernen"
	#tag EndConstant

	#tag Constant, Name = kRemoveFromStorage, Type = String, Dynamic = True, Default = \"Remove from Storage", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aus dem Lager entfernen"
	#tag EndConstant

	#tag Constant, Name = kRemoveItem, Type = String, Dynamic = True, Default = \"Are you sure you want to remove $1\?\n\nThis action can\'t be made undone!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sind Sie sich sicher das Sie $1 entfernen m\xC3\xB6chten\?\n\nDieser Vorgang kann nicht r\xC3\xBCckg\xC3\xA4ngig gemacht werden!"
	#tag EndConstant

	#tag Constant, Name = kRemoveItems, Type = String, Dynamic = True, Default = \"Are you sure you want to remove every selected $1\?\n\nThis action can\'t be made undone!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sind Sie sich sicher das Sie alle ausgew\xC3\xA4hlten $1 entfernen m\xC3\xB6chten\?\n\nDieser Vorgang kann nicht r\xC3\xBCckg\xC3\xA4ngig gemacht werden!"
	#tag EndConstant

	#tag Constant, Name = kRestartApp, Type = String, Dynamic = True, Default = \"Please restart the application to apply changes.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bitte starten Sie die Anwendung neu um \xC3\x84nderungen anzuwenden."
	#tag EndConstant

	#tag Constant, Name = kRestoreDatabase, Type = String, Dynamic = True, Default = \"Restore your Database...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wiederherstellen Ihrer Datenbank..."
	#tag EndConstant

	#tag Constant, Name = kRipeTime, Type = String, Dynamic = True, Default = \"Ripe Time (Days)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Reife Zeit (Tage)"
	#tag EndConstant

	#tag Constant, Name = kSaveSelectedRecipeAsPDF, Type = String, Dynamic = True, Default = \"Save this Recipe as PDF File...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Speichere dieses Rezept in eine PDF Datei..."
	#tag EndConstant

	#tag Constant, Name = kSearch, Type = String, Dynamic = True, Default = \"Search", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Suche"
	#tag EndConstant

	#tag Constant, Name = kSelectLabelPrinterFormat, Type = String, Dynamic = True, Default = \"Set Label Printer and Format...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Label Drucker und Format ausw\xC3\xA4hlen..."
	#tag EndConstant

	#tag Constant, Name = kSelectOnlyOneEntry, Type = String, Dynamic = True, Default = \"Please select 1 entry in the List!", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bitte w\xC3\xA4hlen Sie (nur) einen Eintrag in der Liste aus!"
	#tag EndConstant

	#tag Constant, Name = kSettings, Type = String, Dynamic = True, Default = \"Settings...", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einstellungen..."
	#tag EndConstant

	#tag Constant, Name = kSettingsNote, Type = String, Dynamic = True, Default = \"This Dialog will be automatically shown everytime we can\'t reach the Server or Database\x2C on App start.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dieser Dialog erscheint automatisch wenn die App beim Starten den Server oder die Datenbank nicht erreichen kann."
	#tag EndConstant

	#tag Constant, Name = kShare, Type = String, Dynamic = True, Default = \"Share", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Anteil"
	#tag EndConstant

	#tag Constant, Name = kSharePG, Type = String, Dynamic = True, Default = \"Share PG (%)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"PG Anteil (%)"
	#tag EndConstant

	#tag Constant, Name = kShareVG, Type = String, Dynamic = True, Default = \"Share VG (%)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"VG Anteil (%)"
	#tag EndConstant

	#tag Constant, Name = kShareWater, Type = String, Dynamic = True, Default = \"Share Water (%)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wasser Anteil (%)"
	#tag EndConstant

	#tag Constant, Name = kSQLLoadUnits, Type = String, Dynamic = True, Default = \"SELECT name_en\x2Cid FROM storage_units ORDER BY name_en", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"SELECT name_de\x2Cid FROM storage_units ORDER BY name_de"
	#tag EndConstant

	#tag Constant, Name = kSQLUnitsNameField, Type = String, Dynamic = True, Default = \"name_en", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"name_de"
	#tag EndConstant

	#tag Constant, Name = kStorage, Type = String, Dynamic = True, Default = \"Warehouse", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Lager"
	#tag EndConstant

	#tag Constant, Name = kTargetNicotineLevel, Type = String, Dynamic = True, Default = \"Target Nicotine Level", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ziel Nikotin Anteil"
	#tag EndConstant

	#tag Constant, Name = kTools, Type = String, Dynamic = True, Default = \"Tools", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Werkzeuge"
	#tag EndConstant

	#tag Constant, Name = kUnits, Type = String, Dynamic = True, Default = \"Unit(s)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einheit(en)"
	#tag EndConstant

	#tag Constant, Name = kUnsupportedFileType, Type = String, Dynamic = True, Default = \"Unsupported Filetype!\n\nJPEG and PNG is supported only.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nicht unterst\xC3\xBCtzter Dateityp!"
	#tag EndConstant

	#tag Constant, Name = kUsemySQLServer, Type = String, Dynamic = True, Default = \"Use mySQL-Server", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwende einen mySQL-Server"
	#tag EndConstant

	#tag Constant, Name = kUsername, Type = String, Dynamic = True, Default = \"Username", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Benutzer"
	#tag EndConstant

	#tag Constant, Name = kWater, Type = String, Dynamic = True, Default = \"Water", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wasser"
	#tag EndConstant

	#tag Constant, Name = kWaterOptional, Type = String, Dynamic = True, Default = \"Water (Optional)", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wasser (Optional)"
	#tag EndConstant

	#tag Constant, Name = kWindow, Type = String, Dynamic = True, Default = \"Window", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fenster"
	#tag EndConstant

	#tag Constant, Name = kYes, Type = String, Dynamic = True, Default = \"Yes", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ja"
	#tag EndConstant

	#tag Constant, Name = kYesBackupMyData, Type = String, Dynamic = True, Default = \"Yes\x2C backup my data", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ja\x2C sichere meine Daten"
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
	#tag EndViewBehavior
End Module
#tag EndModule
