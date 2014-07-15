ScriptName _SLAnimInjector Extends sslAnimationFactory
{a script for registering animations}

Import sslObjectFactory
SexLabFramework Property SexLab Auto
sslAnimationSlots Property sslAnimSlots Auto
sslCreatureAnimationSlots Property sslCreatureAnimSlots Auto
_SLAnimInjectorRaces Property SLAnimInjectorRaces Auto

Function LoadAllAnimations()

	SLAnimInjectorRaces.InitializeRacesArrays()

	LoadAnimation1()
	
	LoadAnimation2()
	
EndFunction

Function LoadAnimation1()

	String animName = "(Werewolf) Blowjob"
	
	Bool IsCreatureAnimation = True	
	
	sslBaseAnimation anim
	
	If (IsCreatureAnimation == True)
	
		SexLab.RegisterCreatureAnimation(animName)
		anim = sslCreatureAnimSlots.GetByRegistrar(animName)
	
	Else
	
		SexLab.RegisterAnimation(animName)
		anim = sslAnimSlots.GetByRegistrar(animName)
		
	EndIf	
	
	If anim != None
		Debug.Notification("Adding " + animName)
		Debug.Trace("Adding " + animName)
		
		anim.Name = animName		
		
		anim.SetContent(Sexual)
		
		anim.SoundFX = Sucking

		If (IsCreatureAnimation == True)
		
			String[] RACEID
		
			anim.SetRaceIDs(SLAnimInjectorRaces.Werewolves)
			
		EndIf		
		
		int a1 = anim.AddPosition(Male)
		int a2 = anim.AddPosition(Creature, AddCum=Oral)

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
		
		If (IsCreatureAnimation == True)
			
			anim.Save(sslCreatureAnimSlots.FindByName(animName))	

		Else
		
			anim.Save(sslAnimSlots.FindByName(animName))
		
		EndIf		
		
		anim.SetStageTimer(1, 5.0)
		anim.SetStageTimer(2, 5.0)
		anim.SetStageTimer(3, 5.0)
		anim.SetStageTimer(4, 5.0)
		anim.SetStageTimer(5, 5.0)
		
	EndIf
EndFunction

Function LoadAnimation2()

	String animName = "Human Getting Blowjob"

	Bool IsCreatureAnimation = False
	
	sslBaseAnimation anim
	
	If (IsCreatureAnimation == True)
	
		SexLab.RegisterCreatureAnimation(animName)
		anim = sslCreatureAnimSlots.GetByRegistrar(animName)
	
	Else
	
		SexLab.RegisterAnimation(animName)
		anim = sslAnimSlots.GetByRegistrar(animName)
		
	EndIf
	
	
	
	If anim != None
		Debug.Notification("Adding " + animName)
		Debug.Trace("Adding " + animName)
		
		anim.Name = animName				

		anim.SetContent(Sexual)

		anim.SoundFX = Sucking

		If (IsCreatureAnimation == True)
		
			String[] RACEID
		
			anim.SetRaceIDs(RACEID)
			
		EndIf		

		int a1 = anim.AddPosition(Male)
		int a2 = anim.AddPosition(Creature, AddCum=Oral)

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
		
		If (IsCreatureAnimation == True)
			
			anim.Save(sslCreatureAnimSlots.FindByName(animName))	

		Else
		
			anim.Save(sslAnimSlots.FindByName(animName))
		
		EndIf		

		anim.SetStageTimer(1, 5.0)
		anim.SetStageTimer(2, 5.0)
		anim.SetStageTimer(3, 5.0)
		anim.SetStageTimer(4, 5.0)
		anim.SetStageTimer(5, 5.0)
		
	EndIf
EndFunction
