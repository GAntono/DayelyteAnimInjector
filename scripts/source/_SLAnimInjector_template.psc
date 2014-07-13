ScriptName _SLAnimInjector Extends sslAnimationFactory
{a script for registering animations}

import sslObjectFactory
SexLabFramework Property SexLab Auto
sslAnimationSlots Property sslAnimSlots Auto
sslCreatureAnimationSlots Property sslCreatureAnimSlots Auto

Function LoadAllAnimations()

	Bears = new string[3]
	Bears[0] = "BearBlackRace"
	Bears[1] = "BearBrownRace"
	Bears[2] = "BearSnowRace"

	SabreCats = new string[3]
	SabreCats[0] = "SabreCatRace"
	SabreCats[1] = "SabreCatSnowyRace"
	SabreCats[2] = "DLC1SabreCatGlowRace"

	Chaurus = new string[3]
	Chaurus[0] = "ChaurusRace"
	Chaurus[1] = "ChaurusReaperRace"
	Chaurus[2] = "DLC1_BF_ChaurusRace"

	Dragons = new string[7]
	Dragons[0] = "DragonRace"
	Dragons[1] = "UndeadDragonRace"
	Dragons[2] = "DLC1UndeadDragonRace"
	Dragons[3] = "_00MechaDragonRace0"
	Dragons[4] = "_00MechaDragonRace1"
	Dragons[5] = "_00MechaDragonRace2"
	Dragons[6] = "_00MechaDragonRace3"

	Draugrs = new string[29]
	Draugrs[0] = "DraugrRace"
	Draugrs[1] = "DraugrMagicRace"
	Draugrs[2] = "RigidSkeletonRace"
	Draugrs[3] = "SkeletonNecroRace"
	Draugrs[4] = "SkeletonRace"
	Draugrs[5] = "SkeletonArmorRace"
	Draugrs[6] = "DLC1SoulCairnKeeperRace"
	Draugrs[7] = "DLC1SoulCairnSkeletonArmorRace"
	Draugrs[8] = "DLC1BlackSkeletonRace"
	Draugrs[9] = "DLC1SoulCairnSkeletonNecroRace"
	Draugrs[10] = "_00ArmoredSkeletonArgonianRace"
	Draugrs[11] = "_00ArmoredSkeletonBeastRace_Old"
	Draugrs[12] = "_00ArmoredSkeletonKhajiitRace"
	Draugrs[13] = "_00ArmoredSkeletonRace"
	Draugrs[14] = "_00ArmoredSkeletonRace_Old"
	Draugrs[15] = "_00ChaurusGrimWarriorRace"
	Draugrs[16] = "_00ChaurusWarriorRace"
	Draugrs[17] = "_00BeastSkeletonRace"
	Draugrs[18] = "_00DramanRace"
	Draugrs[19] = "_00DraugrDwarvenRace"
	Draugrs[20] = "_00DraugrOneEyeRace"
	Draugrs[21] = "_00DraugrRaceSH"
	Draugrs[22] = "_00DraugrVarRace"
	Draugrs[23] = "_00DLC1BonemanSkeletonRace"
	Draugrs[24] = "_00LichRace"
	Draugrs[25] = "_00RigidSkeletonBeastRace"
	Draugrs[26] = "DLC2HulkingDraugrRace"
	Draugrs[27] = "DLC2AshSpawnRace"
	Draugrs[28] = "DLC2RigidSkeletonRace"

	Falmers = new string[7]
	Falmers[0] = "FalmerRace"
	Falmers[1] = "_00FalmerRace01"
	Falmers[2] = "_00FalmerRace02"
	Falmers[3] = "_00FalmerRace03"
	Falmers[4] = "_00FalmerRace04"
	Falmers[5] = "_00FalmerRace05"
	Falmers[6] = "_00GoblinRace"

	Giants = new string[2]
	Giants[0] = "GiantRace"
	Giants[1] = "DLC2GhostFrostGiantRace"

	Horses = new string[1]
	Horses[0] = "HorseRace"

	Spiders = new string[5]
	Spiders[0] = "FrostbiteSpiderRace"
	Spiders[1] = "_00ChaurusCrawlerRace"
	Spiders[2] = "_00DwarvenSpiderBoltRace"
	Spiders[3] = "_00DwarvenSpiderFireRace"
	Spiders[4] = "_00SkeletonSpiderRace"

	LargeSpiders = new string[4]
	LargeSpiders[0] = "FrostbiteSpiderRaceGiant"
	LargeSpiders[1] = "FrostbiteSpiderRaceLarge"
	LargeSpiders[2] = "_00ChaurusCrawlerRaceGiant"
	LargeSpiders[3] = "_00ChaurusCrawlerRaceLarge"

	Trolls = new string[5]
	Trolls[0] = "TrollRace"
	Trolls[1] = "TrollFrostRace"
	Trolls[2] = "DLC1TrollFrostRaceArmored"
	Trolls[3] = "DLC1TrollRaceArmored"
	Trolls[4] = "_00DLC1SwampTrollRaceArmored"

	Werewolves = new string[10]
	Werewolves[0] = "WerewolfBeastRace"
	Werewolves[1] = "DLC2WerebearBeastRace"
	Werewolves[2] = "_00GreaterShoggothRace"
	Werewolves[3] = "_00WerebearBeastBlackRace"
	Werewolves[4] = "_00WerebearBeastSnowRace"
	Werewolves[5] = "_00WereSkeeverBeastRace"
	Werewolves[6] = "_00DaedrothRace"
	Werewolves[7] = "_00DramanBeastRace"
	Werewolves[8] = "_00DwarvenPunisherRace"
	Werewolves[9] = "_00WerewolfKingBeastRace"

	Wolves = new string[4]
	Wolves[0] = "WolfRace"
	Wolves[1] = "DLC1DeathHoundCompanionRace"
	Wolves[2] = "DLC1DeathHoundRace"
	Wolves[3] = "_00AspectRace"

	Dogs = new string[8]
	Dogs[0] = "DogRace"
	Dogs[1] = "DogCompanionRace"
	Dogs[2] = "MG07DogRace"
	Dogs[3] = "DA03BarbasDogRace"
	Dogs[4] = "DLC1HuskyArmoredCompanionRace"
	Dogs[5] = "DLC1HuskyArmoredRace"
	Dogs[6] = "DLC1HuskyBareCompanionRace"
	Dogs[7] = "DLC1HuskyBareRace"

	VampireLords = new string[4]
	VampireLords[0] = "DLC1VampireBeastRace"
	VampireLords[1] = "_00DramanHunterRace"
	VampireLords[2] = "_00FeralVampRace"
	VampireLords[3] = "_00SkeletonLordRace"

	Gargoyles = new string[6]
	Gargoyles[0] = "DLC1GargoyleRace"
	Gargoyles[1] = "DLC1GargoyleVariantBossRace"
	Gargoyles[2] = "DLC1GargoyleVariantGreenRace"
	Gargoyles[3] = "_00FrostBruteRace"
	Gargoyles[4] = "_00WrathBruteRace"
	Gargoyles[5] = "_00DramanBruteRace"

	Seekers = new string[1]
	Seekers[0] = "DLC2SeekerRace"	

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
	
	If (IsCreatureAnimation == True)
	
		SexLab.RegisterCreatureAnimation(animName)
		sslBaseAnimation anim = sslCreatureAnimSlots.GetByRegistrar(animName)
	
	Else
	
		SexLab.RegisterAnimation(animName)
		sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
		
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
		
			String[] RACEID	;only useful to allow the script to compile without errors
		
			anim.SetRaceIDs(RACEID)
			;/Replace RACEID with the creature race you want to ragister this animation for.
			Valid races are: Bears, SabreCats, Chaurus, Dragons, Draugrs, Falmers, Giants, Horses, 
			Spiders, LargeSpiders, Trolls, Werewolves, Wolves, Dogs, VampireLords, Gargoyles, Seekers
			You don't
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
