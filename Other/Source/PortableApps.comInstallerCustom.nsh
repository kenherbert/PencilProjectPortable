!macro CustomCodePreInstall
	${If} ${FileExists} "$INSTDIR\Data\Pencil\Profiles\jtxymez4.default\*.*"
		Rename "$INSTDIR\Data\Pencil\Profiles\jtxymez4.default" "$INSTDIR\Data\profile"
		RMDir /r "$INSTDIR\Data\Pencil"
		CreateDirectory "$INSTDIR\Data\Pencil"
		Rename "$INSTDIR\Data\Local\Profiles\jtxymez4.default\startupCache" "$INSTDIR\Data\profile\startupCache"
		RMDir /r "$INSTDIR\Data\Local"
		CreateDirectory "$INSTDIR\Data\Local"
	${EndIf}
!macroend