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
	;/If you have created more LoadAnimation functions (i.e. LoadAnimation2, LoadAnimation3 etc),
	then add their names here line-by-line, followed by "()", for example
	LoadAnimation2()
	LoadAnimation3()
	...
	etc
	/;
	
EndFunction

Function LoadAnimation1()
;/registers an animation and all its features
If more animations need to be registered, copy/paste another copy of this function and give it a new name, e.g. LoadAnimation2.
IMPORTANT: afterwards, add the name of the new function to the above LoadAllAnimations function.
/;

	;	NAME
	String animName = "ANIMATIONNAME"
	;/Replace ANIMATIONNAME with the name of your animation for example "MyAnimation1"
	Note: SexLab places the creature in parenthesis, like so: "(Werewolf) Blowjob".
	It's not mandatory to do so but it helps with the menu uniformity.
	/;

	;	TYPE OF ANIMATION
	Bool IsCreatureAnimation = TRUEORFALSE
	;/Replace TRUEORFALSE with "True" if this is a creature animation and with "False" if this a human animation.
	/;
	
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
		
		;	CONTENT
		anim.SetContent(CONTENT)
		;/Replace CONTENT with the content of the animation. Options are:
		Misc, Sexual, Foreplay
		/;
		
		;	SOUND EFFECTS
		anim.SoundFX = SOUNDFX
		;/Replace SOUNDFX with the sound effects of the animation. Options are:
		Squishing, Sucking, SexMix, Squirting
		/;
		
		;	CREATURE RACE
		If (IsCreatureAnimation == True)
		
			String[] RACEID		;/useful to allow the script to compile without errors
								 without the animator having to delete the whole IF block/;
								 
			anim.SetRaceIDs(SLAnimInjectorRaces.RACEID)
			;/Replace RACEID with the creature race you want to ragister this animation for.
			Valid races are: Bears, SabreCats, Chaurus, Dragons, Draugrs, Falmers, Giants, Horses, 
			Spiders, LargeSpiders, Trolls, Werewolves, Wolves, Dogs, VampireLords, Gargoyles, Seekers
			If this NOT a creature animation, just leave RACEID as is.
			/;
			
		EndIf
		
		
		;	POSITIONS
		int a1 = anim.AddPosition(GENDER, AddCum=CUM)
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
		
		;	STAGES
		anim.AddPositionStage(a1, "ANIMATIONSTAGE", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)		
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
		
		;	TAGS
		anim.AddTag("TAG")
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
		
		If (IsCreatureAnimation == True)
			
			anim.Save(sslCreatureAnimSlots.FindByName(animName))	

		Else
		
			anim.Save(sslAnimSlots.FindByName(animName))
		
		EndIf
		
		
		;	STAGE TIMERS
		anim.SetStageTimer(STAGENUMBER, STAGETIMER)
		;/Replace STAGENUMBER with the number of the stage you want to configure (e.g. 1 for stage 1, 2 for stage 2 etc) and
		replace STAGETIMER with the time in seconds that represents this stage's duration (e.g. 10 for 10 seconds, 12.5 for 12 and a half second etc)
		If you want to setup timers for more stages, add more lines like this, for example:
		anim.SetStageTimer(1, 10)
		anim.SetStageTimer(2, 12.5)
		...
		etc		
		/;
		
	EndIf
EndFunction
