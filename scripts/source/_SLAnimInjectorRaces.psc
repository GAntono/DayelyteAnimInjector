ScriptName _SLAnimInjectorRaces Extends sslAnimationFactory
{initializes and stores the race arrays required for the injector}

string[] Property Bears Auto
string[] Property SabreCats Auto
string[] Property Chaurus Auto
string[] Property Dragons Auto
string[] Property Draugrs Auto
string[] Property Falmers Auto
string[] Property Giants Auto
string[] Property Horses Auto
string[] Property Spiders Auto
string[] Property LargeSpiders Auto
string[] Property Trolls Auto
string[] Property Werewolves Auto
string[] Property Wolves Auto
string[] Property Dogs Auto
string[] Property VampireLords Auto
string[] Property Gargoyles Auto
string[] Property Seekers Auto
;declaring all SexLab race arrays as properties so they can be accessed from other scripts

String[] Property RACEID Auto
;/dummy array property to allow the injector script to compile
without the animator having to delete the RACEID IF block/;


Function InitializeRacesArrays()
;populate the races arrays with the races they should contain
	
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

EndFunction
