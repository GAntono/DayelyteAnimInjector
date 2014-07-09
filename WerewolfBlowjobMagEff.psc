Scriptname WerewolfBlowjobMagEff extends ObjectReference  
{A script for testing the animation injector}

SexLabFramework property SexLab auto
;points to the SexLab Framework script so we can use its functions

Bool Property promptForBed = False Auto

Actor Property playerRef Auto
;points to the player

Event OnEffectStart(Actor akTarget, Actor akCaster)
;when this effect is started
	
	actor[] sexActor = new Actor[2]
	;declares an actor array variable containing just 1 actor
	sexActor[0] = akTarget
	;sets the first actor in this array to be the actor that was targeted by the magic effect
	sexActor[1] = PlayerRef
	;sets the first actor in this array to be the player
	sslBaseAnimation[] anims
	;declares an array of that class to hold the animations we will be using
	anims = SexLab.GetAnimationsByTags(2, "Werewolf")
	;fetches one-actor masturbation animations from SexLab and stores them into the array
	
	SexLab.StartSex(sexActor, anims, allowBed = promptForBed)
		
EndEvent
