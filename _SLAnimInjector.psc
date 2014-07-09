ScriptName _SLAnimInjector Extends sslAnimationFactory
{a script for registering animations}

import sslObjectFactory
SexLabFramework Property SexLab Auto
sslAnimationSlots Property sslAnimSlots Auto

Function LoadAllAnimations()

	Bool IsLooping = True
	
	Debug.Trace("Loop Started")
	
	While(IsLooping)
		If(Utility.IsInMenuMode())
			Utility.Wait(0.5)
		Else
			IsLooping = False
		EndIf
	EndWhile
	
	Debug.Trace("Loop Ended")

	LoadAnimation1()
	;LoadAnimation1()
	LoadAnimation2()
	;LoadAnimation2()
	;/If you have created more LoadAnimation functions (i.e. LoadAnimation2, LoadAnimation3 etc),
	then add their names here line-by-line, followed by "()", for example
	LoadAnimation3()
	LoadAnimation4()
	...
	etc
	/;
	Debug.Trace("LoadAllAnimations called")
	SendModEvent ("AnimationInjectorFinished")		
EndFunction

Function LoadAnimation1()
;/registers a non-creature animation and all its features
If more animations need to be registered, copy/paste another copy of this function and give it another name, e.g. LoadAnimation2.
IMPORTANT: afterwards, add the name of the new function to the above LoadAllAnimations function.
/;

String animName = "Werewolf_Blowjob"
;/Replace ANIMATIONNAME with the name of your animation for example "MyAnimation1"
/;

	SexLab.RegisterAnimation(animName)
	sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
	
	If anim != None
		Debug.Notification("Adding " + animName)
		Debug.Trace("Adding " + animName)
		anim.Name = animName		
		
		anim.SetContent(Sexual)
		;/Replace CONTENT with the content of the animation. Options are:
		Misc, Sexual, Foreplay
		/;
		
		anim.SoundFX = Sucking
		;/Replace SOUNDFX with the sound effects of the animation. Options are:
		Squishing, Sucking, SexMix, Squirting
		/;
		
		int a1 = anim.AddPosition(Male)
		int a2 = anim.AddPosition(Female, AddCum=Oral)
		;/Defines the gender of the first actor (also called position) in this animation.
		Defines whether cum should be shown and where
		Replace GENDER with the gender of the actor in this position. Options are: Male, Female, Creature.
		Replace CUM with the kind of cum this animation should show. Options are:
		Vaginal, Oral, Anal, VaginalOral, VaginalAnal, OralAnal, VaginalOralAnal.
		If no cum should be applied, then delete the phrase AddCum=CUM.
		
		If this animations has more actors, add more lines like this, increasing a1 to a2, a3 etc
		For example:
		int a2 = anim.AddPosition(GENDER, AddCum=CUM)
		int a3 = anim.AddPosition(GENDER, AddCum=CUM)
		/;
		Debug.Trace("Setting up stages for " + animName)
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
		;/Adds the first stage of the animation for position 1
		Replace ANIMATIONSTAGE with the name of the animation for this stage for example "MyAnimation1Stage1".
		If this stage requires specific offsets for forward, side, up, rotate, replace 0.0 with your values.
		Silent = false will make the actor vocal. Set silent = true to make the actor silent in this stage
		openMouth = false will make the actor keep her mouth closed. Set openMouth = true  to make her open her mouth in this stage.
		strapon = true will make the actor equip a strapon. Set strapon = false to change this.
		sos = 0 can be set depending on the schlong's position that this animation stage should have.
		
		If this animation has more stages and/or more actors, add more lines like this, 
		giving the correct position (i.e. a1, a2, a3 etc) and the animation for each stage.
		
		For example: 
		
		To add another stage to the a1 position
		anim.AddPositionStage(a1, "ANIMATIONSTAGE", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		To add a stage to the a2 position
		anim.AddPositionStage(a2, "ANIMATIONSTAGE", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		/;
		
		anim.AddTag("Werewolf")
		;/Replace TAG with a tag that describes the animation, for example "Aggressive"
		You can add as many tags as you'd like by adding a copy of this line, for example:
		
		anim.AddTag("BBP")
		anim.AddTag("Sex")
		anim.AddTag("Oral")
		anim.AddTag("Dirty")
		anim.AddTag("Blowjob")
		anim.AddTag("LeadIn")
		anim.AddTag("MF")
		/;		
		Debug.Trace("Saving " + animName)
		anim.Save(sslAnimSlots.FindByName(animName))
		;saves the animation		
		
	EndIf
EndFunction


Function LoadAnimation2()
;/registers a non-creature animation and all its features
If more animations need to be registered, copy/paste another copy of this function and give it another name, e.g. LoadAnimation2.
IMPORTANT: afterwards, add the name of the new function to the above LoadAllAnimations function.
/;

String animName = "Werewolf_Blowjob2"
;/Replace ANIMATIONNAME with the name of your animation for example "MyAnimation1"
/;

	SexLab.RegisterAnimation(animName)
	sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
	
	If anim != None
		Debug.Notification("Adding " + animName)
		anim.Name = animName		
		
		anim.SetContent(Sexual)
		;/Replace CONTENT with the content of the animation. Options are:
		Misc, Sexual, Foreplay
		/;
		
		anim.SoundFX = Sucking
		;/Replace SOUNDFX with the sound effects of the animation. Options are:
		Squishing, Sucking, SexMix, Squirting
		/;
		
		int a1 = anim.AddPosition(Male)
		int a2 = anim.AddPosition(Female, AddCum=Oral)
		;/Defines the gender of the first actor (also called position) in this animation.
		Defines whether cum should be shown and where
		Replace GENDER with the gender of the actor in this position. Options are: Male, Female, Creature.
		Replace CUM with the kind of cum this animation should show. Options are:
		Vaginal, Oral, Anal, VaginalOral, VaginalAnal, OralAnal, VaginalOralAnal.
		If no cum should be applied, then delete the phrase AddCum=CUM.
		
		If this animations has more actors, add more lines like this, increasing a1 to a2, a3 etc
		For example:
		int a2 = anim.AddPosition(GENDER, AddCum=CUM)
		int a3 = anim.AddPosition(GENDER, AddCum=CUM)
		/;
		Debug.Trace("Setting up stages for " + animName)
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
		;/Adds the first stage of the animation for position 1
		Replace ANIMATIONSTAGE with the name of the animation for this stage for example "MyAnimation1Stage1".
		If this stage requires specific offsets for forward, side, up, rotate, replace 0.0 with your values.
		Silent = false will make the actor vocal. Set silent = true to make the actor silent in this stage
		openMouth = false will make the actor keep her mouth closed. Set openMouth = true  to make her open her mouth in this stage.
		strapon = true will make the actor equip a strapon. Set strapon = false to change this.
		sos = 0 can be set depending on the schlong's position that this animation stage should have.
		
		If this animation has more stages and/or more actors, add more lines like this, 
		giving the correct position (i.e. a1, a2, a3 etc) and the animation for each stage.
		
		For example: 
		
		To add another stage to the a1 position
		anim.AddPositionStage(a1, "ANIMATIONSTAGE", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		To add a stage to the a2 position
		anim.AddPositionStage(a2, "ANIMATIONSTAGE", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		
		/;
		
		anim.AddTag("Werewolf")
		;/Replace TAG with a tag that describes the animation, for example "Aggressive"
		You can add as many tags as you'd like by adding a copy of this line, for example:
		
		anim.AddTag("BBP")
		anim.AddTag("Sex")
		anim.AddTag("Oral")
		anim.AddTag("Dirty")
		anim.AddTag("Blowjob")
		anim.AddTag("LeadIn")
		anim.AddTag("MF")
		/;		
		Debug.Trace("Saving " + animName)
		anim.Save(sslAnimSlots.FindByName(animName))
		;saves the animation		
		
	EndIf
EndFunction
