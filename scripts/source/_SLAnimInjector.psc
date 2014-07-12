ScriptName _SLAnimInjector Extends sslAnimationFactory
{a script for registering animations}

import sslObjectFactory
SexLabFramework Property SexLab Auto
sslAnimationSlots Property sslAnimSlots Auto

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
	
	LoadAnimation2()
	
EndFunction

Function LoadAnimation1()

	PrepareFactoryCreatures()

	String animName = "(Werewolf) Blowjob"

	SexLab.RegisterAnimation(animName)
	sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
	
	If anim != None
		Debug.Notification("Adding " + animName)
		Debug.Trace("Adding " + animName)
		anim.Name = animName
		
		anim.SetContent(Sexual)
		
		anim.SoundFX = Sucking
		
		anim.SetRaceIDs(Werewolves)
		
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
		
		anim.Save(sslAnimSlots.FindByName(animName))	
		
		anim.SetStageTimer(1, 5.0)
		anim.SetStageTimer(2, 5.0)
		anim.SetStageTimer(3, 5.0)
		anim.SetStageTimer(4, 5.0)
		anim.SetStageTimer(5, 5.0)
		
	EndIf
EndFunction


Function LoadAnimation2()

	PrepareFactoryCreatures()

	String animName = "(Werewolf) Blowjob2"

	SexLab.RegisterAnimation(animName)
	sslBaseAnimation anim = sslAnimSlots.GetByRegistrar(animName)
	
	If anim != None
		Debug.Notification("Adding " + animName)
		Debug.Trace("Adding " + animName)
		anim.Name = animName		
		
		anim.SetContent(Sexual)
		
		anim.SoundFX = Sucking
		
		anim.SetRaceIDs(Werewolves)
		
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
		
		anim.Save(sslAnimSlots.FindByName(animName))
		
		anim.SetStageTimer(1, 5.0)
		anim.SetStageTimer(2, 5.0)
		anim.SetStageTimer(3, 5.0)
		anim.SetStageTimer(4, 5.0)
		anim.SetStageTimer(5, 5.0)
		
	EndIf
EndFunction

string[] Bears
string[] SabreCats
string[] Chaurus
string[] Dragons
string[] Draugrs
string[] Falmers
string[] Giants
string[] Horses
string[] Spiders
string[] LargeSpiders
string[] Trolls
string[] Werewolves
string[] Wolves
string[] Dogs
string[] VampireLords
string[] Gargoyles
string[] Seekers