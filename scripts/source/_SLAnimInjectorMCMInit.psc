Scriptname _SLAnimInjectorMCMInit extends SKI_ConfigBase  
_SLAnimInjector Property Injector Auto
Int RegisterOrReregister
Bool FirstTime = True

Event OnConfigInit()
	Pages = New String[1]
	Pages[0] = "General"
	;RegisterForModEvent("AnimationInjectorFinished", "OnAnimationRegistered")
EndEvent

Event OnPageReset(String asPage)
	If(asPage == "")
		LoadCustomContent("Dayelyte/logo.dds", 309, 148)
	Else
		UnloadCustomContent()
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)

		AddHeaderOption("Register Animations in SexLab")
		
		If(FirstTime)
			RegisterOrReregister = AddTextOption("Animations", "Register")
		Else
			;SetOptionFlags(RegisterOrReregister, OPTION_FLAG_NONE)
			RegisterOrReregister = AddTextOption("Animations", "Re-register", OPTION_FLAG_NONE)
		EndIf
	EndIf
EndEvent

Event OnOptionSelect(Int auiOption)
	If(auiOption == RegisterOrReregister && FirstTime)
		SetTextOptionValue(auiOption, "Please click again...")
		FirstTime = False		
	ElseIf(auiOption == RegisterOrReregister && !FirstTime)
		SetTextOptionValue(auiOption, "DONE")
		SetOptionFlags(auiOption, OPTION_FLAG_DISABLED)
		Injector.LoadAllAnimations()
	EndIf
EndEvent

;/Event OnAnimationRegistered(string eventName, string strArg, float numArg, Form sender)
	SetTextOptionValue(RegisterOrReregister, "Done")
EndEvent/;