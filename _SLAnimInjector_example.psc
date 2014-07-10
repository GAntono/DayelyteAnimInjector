ScriptName _SLAnimInjector_example Extends sslAnimationFactory
{a script for registering animations}

import sslObjectFactory
SexLabFramework Property SexLab Auto
sslAnimationSlots Property sslAnimSlots Auto

Function LoadAllAnimations()

	LoadAnimation1()
	
	LoadAnimation2()
	
EndFunction

Function LoadAnimation1()

String animName = "Werewolf_Blowjob"

	SexLab.RegisterAnimation(animName)
	sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
	
	If anim != None
		Debug.Notification("Adding " + animName)
		Debug.Trace("Adding " + animName)
		anim.Name = animName		
		
		anim.SetContent(Sexual)
		
		anim.SoundFX = Sucking
		
		int a1 = anim.AddPosition(Male)
		int a2 = anim.AddPosition(Female, AddCum=Oral)
		
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S1", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S2", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S3", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S4", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S5", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)		
		
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S1", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S2", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S3", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S4", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S5", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		anim.AddTag("Werewolf")
		
		Debug.Trace("Saving " + animName)
		
		anim.Save(sslAnimSlots.FindByName(animName))	
		
		anim.SetStageTimer(1, 5.0)
		anim.SetStageTimer(2, 5.0)
		anim.SetStageTimer(3, 5.0)
		anim.SetStageTimer(4, 5.0)
		anim.SetStageTimer(5, 5.0)
		
	EndIf
EndFunction


Function LoadAnimation2()

String animName = "Werewolf_Blowjob2"

	SexLab.RegisterAnimation(animName)
	sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
	
	If anim != None
		Debug.Notification("Adding " + animName)
		anim.Name = animName		
		
		anim.SetContent(Sexual)
		
		anim.SoundFX = Sucking
		
		int a1 = anim.AddPosition(Male)
		int a2 = anim.AddPosition(Female, AddCum=Oral)
		
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S1", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S2", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S3", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S4", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S5", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S1", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S2", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S3", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S4", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		anim.AddPositionStage(a2, "Werewolf_Blowjob_A2_S5", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		anim.AddTag("Werewolf")
		
		Debug.Trace("Saving " + animName)
		
		anim.Save(sslAnimSlots.FindByName(animName))
		
		anim.SetStageTimer(1, 5.0)
		anim.SetStageTimer(2, 5.0)
		anim.SetStageTimer(3, 5.0)
		anim.SetStageTimer(4, 5.0)
		anim.SetStageTimer(5, 5.0)
		
	EndIf
EndFunction
