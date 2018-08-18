#define scrInitializeLevel
///scrInitializeLevel()

/*Before the new system, there was an old and inconvenient way of saving stages, using
different variables for each. However now we only use one variable, followed by an
array (the number inside the square brackets means the character number). The number
this value holds how many stages we have cleared.*/
global.stage_max[0] = 0; //Sonic
global.stage_max[1] = 0; //Shantae
global.stage_max[2] = 0; //Knuckles
global.stage_max[3] = 0; //Sky
global.stage_max[4] = 0; //Shadow
global.stage_max[5] = 0; //Bolo
global.stage_max[6] = 0; //Silver
global.stage_max[7] = 0; //Rottytops
global.stage_max[8] = 0; //Tails
global.stage_max[9] = 0; //Vinegar
global.stage_max[10] = 0; //Amy
global.stage_max[11] = 0; //Twitch

/*global.Z1_1 = true;
global.Z1_1Knux = true;
global.Z1_1Shad = true;
global.Z1_1Sil = true;
global.Z1_1Tails = true;
global.Z1_1Amy = true;
global.Z1_B = true;
global.Z1_BKnux = true;
global.Z1_BShad = true;
global.Z1_BSil = true;
global.Z1_BTails = true;
global.Z1_BAmy = true;
global.S1 = true;
global.S1S = true;
global.S1B = true;
global.Z2_1 = true;
global.Z2_1Knux = true;
global.Z2_1Shad = true;
global.Z2_1Sil = true;
global.Z2_1Amy = true;
global.Z2_B = true;
global.Z2_BKnux = true;
global.Z2_BShad = true;
global.Z2_BAmy = true;
global.S2 = true;
global.S2S = true;
global.Z3_1 = false;
global.Z3_1Knux = false;
global.Z3_1Amy = false;
global.Z3_B = false;

#define scrInitializeItems
///scrInitializeItems()

global.canGoSuper = false;
global.canGoHyper = false;
global.canGoDark = false;

global.stomp = true;
global.slide = true;
global.tornado = false;
global.punch = false;
global.drill = true;
global.getHeart[0] = false;
global.getHeart[1] = false;
global.monkeyLearnt = true;
global.elephantLearnt = false;
global.harpyLearnt = false;
global.hair_power = 0;
global.halfpotions = 5;
global.fullpotions = 5;
global.autopotions = 5;
global.fleshpops = 5;
global.monstermilk = 5;
global.super_monstermilk = 5;
global.pikeballs = 5;
global.superpikeballs = 5;
global.bubbleshields = 5;
global.fireballs = 50;
global.pirategun = true;
