ScriptName _SLAnimInjector Extends sslAnimationFactory
{a script for registering animations}

Import sslObjectFactory
;/Importing the SexLab script sslObjectFactory.psc so that we can use its functions.
Also, its functions don't need to be called with the "sslObjectFactory." prefix this way.
(makes for an easier to read script).
/;

SexLabFramework Property SexLab Auto
;points to the SexLabFramework.psc so that we can use both its functions and properties (they have to be prefixed with "SexLab")

sslAnimationSlots Property sslAnimSlots Auto
;points to the sslAnimationSlots.psc so that we can use both its functions and properties (they have to be prefixed with "sslAnimSlots")

sslCreatureAnimationSlots Property sslCreatureAnimSlots Auto
;points to the sslCreatureAnimationSlots.psc so that we can use both its functions and properties (they have to be prefixed with "sslCreatureAnimSlots")

_SLAnimInjectorRaces Property SLAnimInjectorRaces Auto
;points to the _SLAnimInjectorRaces.psc so that we can use both its functions and properties (they have to be prefixed with "SLAnimInjectorRaces")


Function LoadAllAnimations()
;initializes (puts item in) the arrays holding the races and then runs the actual registration functions for the animations

	SLAnimInjectorRaces.InitializeRacesArrays()
	;runs the InitializeRacesArrays() function from the _SLAnimInjectorRaces script
	;that script holds the arrays to make for a cleaner script (remember the previous version with dozens of lines adding stuff to the races? no more of that now)

	LoadAnimation1()
	;runs the registration function for the first animation
	
	LoadAnimation2()
	;runs the registration function for the second animation
	
EndFunction

Function LoadAnimation1()
;registers and configures the first animation

	String animName = "(Werewolf) Blowjob"
	;declares a variable called animName (it's a string variable i.e. it holds text)
	;the string "(Werewolf) Blowjob" is put into the variable
	;this is so that we don't have to type "(Werewolf) Blowjob" over and over again. We say animName and be done with it.
	
	Bool IsCreatureAnimation = True
	;declares a bool (i.e. holds true or false) variable called IsCreatureAnimation
	;the value "True" is put into the variable
	;this will allow the template to know which piece of code to run depending on what kind of animation we're registering. See below.
	
	sslBaseAnimation anim
	;declares a variable called anim.
	;this is a sslBaseAnimation variable, i.e. it holds an object of "sslBaseAnimation" type.
	;sslBaseAnimation objects are actually the animations in SexLab.
	;why and how we figured out that "anim" should be of "sslBaseAnimation" type will be explained below.
	
	If (IsCreatureAnimation == True)
	;if the modder has specified that this is a creature animation (by leaving the IsCreatureAnimation variable to true)
	
		SexLab.RegisterCreatureAnimation(animName)
		;goes to the SexLabFramework.psc and runs the RegisterCreatureAnimation() function.
		;this creates a new registry entry (called Slot) in SexLab to store the animation, but it has nothing in it yet unless configured
		;(animName) tells the RegisterCreatureAnimation function that this is the name of the animation.
		;of course, animName holds "(Werewolf) Blowjob", so this will be the actual name!
		
		anim = sslCreatureAnimSlots.GetByRegistrar(animName)
		;goes to the sslCreatureAnimationSlots.psc and runs the GetByRegistrar() function.
		;this looks into the registry to find an animation by name. We supply "animName" as name, so it will return our freshly registered animation.
		;GetByRegistrar() returns (gives as result) objects of sslBaseAnimation type (i.e. animations). This why we set "anim" to be of sslBaseAnimation type.
		;we know this because GetByRegistrar() is defined as "sslBaseAnimation function GetbyRegistrar(string Registrar)".
		;then the result of the function is loaded into the "anim" variable
		;note: if you search sslCreatureAnimationSlots.psc, you won't find GetByRegistrar() in there. However, in the first line you'll see that sslCreatureAnimationSlots extends sslAnimationSlots.
		;this means that it is a "superclass" of sslAnimationSlots and so it holds all it's functions and properties, plus the extra ones written within it.
		;this is why we can run GetByRegistrar() from sslCreatureAnimSlots.
		;why we MUST run it from sslCreatureAnimationSlots and not from sslAnimationSlots cannot be explained here, however!
	
	Else
	;in any other case (since we only have true OR false, this means "If IsCreatureAnimation == false")
	
		SexLab.RegisterAnimation(animName)
		;as above, creates a new registry entry (slot) for the animation named "animName"
		
		anim = sslAnimSlots.GetByRegistrar(animName)
		;as above, loads the animation into the "anim" variable
		
	EndIf	
	
	If anim != None
	;this is a safety to make sure that the anim variable is actually holding something before we proceed.
	;(otherwise this could possibly create trouble)
	
		Debug.Notification("Adding " + animName)
		;shows a message on the top left cornder of the scree. It will say "Adding" and the name of the animation (animName)
		Debug.Trace("Adding " + animName)
		;writes the same message in the log
		
		anim.Name = animName
		;anim holds an sslBaseAnimation object which is our animation.
		;anim.Name points to the "Name" property of the anim object (the "Name" property can be found in sslBaseAnimation.psc)
		;animName is loaded into anim.Name, effectively configuring this animation to have this name
		
		anim.SetContent(Sexual)
		;sets the content of anim to Sexual
		;this works a bit different: anim.SetContent() runs the SetContent() function from the anim (sslBaseAnimation.psc) script.
		;then the SetContent() function is responsible for setting the content to whatever argument it is given (Sexual)
		
		anim.SoundFX = Sucking
		;sets the sound effect of anim to Sucking (works like anim.Name)

		If (IsCreatureAnimation == True)
		;if the animation is set as a creature animation
		
			anim.SetRaceIDs(SLAnimInjectorRaces.Werewolves)
			;sets the race of anim to Werewolves (works like anim.Name)
			;the property "Werewolves" is fetched from the SLAnimInjectorRaces.psc
			
		EndIf		
		
		int a1 = anim.AddPosition(Male)
		;runs the AddPosition() function from anim and gives it the argument Male
		;loads it into the int-type variable a1
		;a1 is defined as "int" (integer) because AddPosition() returns an integer as result (0 for male, 1 for female)
		
		int a2 = anim.AddPosition(Creature, AddCum=Oral)
		;the second position for anim is set as Creature and loaded into a2
		;Cum is also set to Oral

		anim.AddPositionStage(a1, "Werewolf_Blowjob_A1_S1", forward = 0.0, side = 0.0, up = 0.0, rotate = 0.0, silent = false, openMouth = false, strapon = true, sos = 0)
		;adds the first stage for anim
		;AddPositionStage takes all the parameters given and configures it accordingly
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
		;runs the AddTag() function from anim. Sets the tag to "Werewolf"
		
		Debug.Trace("Saving " + animName)
		;writes this message to the log
		
		If (IsCreatureAnimation == True)
		;if this is a creature animation
			
			anim.Save(sslCreatureAnimSlots.FindByName(animName))
			;runs the Save() function from anim
			;the argument of the function (parethesis) contains another function
			;FindByName is run from sslCreatureAnimSlots. It looks up the animation animName in the Creature Animation Slots and passes it to Save()
			;then Save() just saves (finalises) the configuration (does some internal framework maintenance stuff )

		Else
		;if the is not a creature animation
		
			anim.Save(sslAnimSlots.FindByName(animName))
			;does the same as above. Only difference is uses the (non-creature) animation slots
		
		EndIf		
		
		anim.SetStageTimer(1, 5.0)
		;runs the SetStageTimer from the anim script
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
		
			anim.SetRaceIDs(SLAnimInjectorRaces.RACEID)
			
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
