///scrLoad()

//if file_exists ("save.sav")
//{
    ini_open ("save.sav");
    
    global.secondsFile = ini_read_real ("savedata", "secondsFile", global.secondsFile);
    global.minutesFile = ini_read_real ("savedata", "minutesFile", global.minutesFile);
    global.hoursFile = ini_read_real ("savedata", "hoursFile", global.hoursFile);
    global.Z1_1 = ini_read_real ("savedata", "Z1-1", global.Z1_1);
    global.Z1_1Knux = ini_read_real ("savedata", "Z1-1Knux", global.Z1_1Knux);
    global.Z1_1Amy = ini_read_real ("savedata", "Z1-1Amy", global.Z1_1Amy);
    global.Z1_B = ini_read_real ("savedata", "Z1-B", global.Z1_B);
    global.Z1_BKnux = ini_read_real ("savedata", "Z1-BKnux", global.Z1_BKnux);
    global.Z1_BAmy = ini_read_real ("savedata", "Z1-BAmy", global.Z1_BAmy);
    global.Z2_1 = ini_read_real ("savedata", "Z2-1", global.Z2_1);
    global.Z2_1Knux = ini_read_real ("savedata", "Z2-1Knux", global.Z2_1Knux);
    global.Z2_B = ini_read_real ("savedata", "Z2-B", global.Z2_B);
    global.Z2_BKnux = ini_read_real ("savedata", "Z2-BKnux", global.Z2_BKnux);
    global.Z2_BAmy = ini_read_real ("savedata", "Z2-BAmy", global.Z2_BAmy);
    global.S1 = ini_read_real ("savedata", "S1", global.S1);
    global.S1S = ini_read_real ("savedata", "S1S", global.S1S);
    global.S2 = ini_read_real ("savedata", "S2", global.S2);
    global.ch1 = ini_read_real ("savedata", "Chaosemerald1", global.ch1);
    global.ch2 = ini_read_real ("savedata", "Chaosemerald2", global.ch2);
    global.gems = ini_read_real ("savedata", "Gems", global.gems);
    global.totalrings = ini_read_real ("savedata", "Rings", global.totalrings);
    global.getHeart0 = ini_read_real ("savedata", "Heartholder0", global.getHeart0);
    global.getHeart1 = ini_read_real ("savedata", "Heartholder1", global.getHeart1);
    global.seal0 = ini_read_real ("savedata", "MagicSeal0", global.seal0);
    global.seal0A = ini_read_real ("savedata", "MagicSeal0A", global.seal0A);
    global.seal0B = ini_read_real ("savedata", "MagicSeal0B", global.seal0B);
    global.maxHearts = ini_read_real ("savedata", "Maxhearts", global.maxHearts);
    global.monkeyLearnt = ini_read_real ("savedata", "Monkey", global.monkeyLearnt);
    global.elephantLearnt = ini_read_real ("savedata", "Elephant", global.elephantLearnt);
    global.harpyLearnt = ini_read_real ("savedata", "Harpy", global.harpyLearnt);
    global.stomp = ini_read_real ("savedata", "Stomp", global.stomp);
    global.slide = ini_read_real ("savedata", "Slide", global.slide);
    global.punch = ini_read_real ("savedata", "Punch", global.punch);
    global.drill = ini_read_real ("savedata", "Drill", global.drill);
    global.tornado = ini_read_real ("savedata", "Tornado", global.tornado);
    global.dialogue0 = ini_read_real ("savedata", "Dialogue 0", global.dialogue0);
    global.dialogue1 = ini_read_real ("savedata", "Dialogue 1", global.dialogue1);
    global.halfpotions = ini_read_real ("savedata", "Half Potions", global.halfpotions);
    global.fullpotions = ini_read_real ("savedata", "Full Potions", global.fullpotions);
    global.autopotions = ini_read_real ("savedata", "Auto-Potions", global.autopotions);
    global.pikeballs = ini_read_real ("savedata", "Pike Balls", global.pikeballs);
    global.superpikeballs = ini_read_real ("savedata", "Super Pike Balls", global.superpikeballs);
    global.fireballs = ini_read_real ("savedata", "Fireballs", global.fireballs);
    global.keys = ini_read_real ("savedata", "Keys", global.keys);
    global.d1door = ini_read_real ("savedata", "D1D", global.d1door);
    global.mdoor1 = ini_read_real ("savedata", "M1D", global.mdoor1);
    global.doorpass1 = ini_read_real ("savedata", "DP1", global.doorpass1);
    global.doorpass2 = ini_read_real ("savedata", "DP2", global.doorpass2);
    global.doorpass3 = ini_read_real ("savedata", "DP3", global.doorpass3);
    global.ringItem = ini_read_real ("savedata", "Ring Item", global.ringItem);
    global.tablet = ini_read_real ("savedata", "Tablet", global.tablet);
    global.chest1 = ini_read_real ("savedata", "Chest 1", global.chest1);
    global.chest2 = ini_read_real ("savedata", "Chest 2", global.chest2);
    global.chest3 = ini_read_real ("savedata", "Chest 3", global.chest3);
    global.chest4 = ini_read_real ("savedata", "Chest 4", global.chest4);
    global.chest1L = ini_read_real ("savedata", "Chest 1L", global.chest1L);
    global.chest2L = ini_read_real ("savedata", "Chest 2L", global.chest2L);
    global.chest3L = ini_read_real ("savedata", "Chest 3L", global.chest3L);
    global.chest4L = ini_read_real ("savedata", "Chest 4L", global.chest4L);
    
    if global.life >= 4
       global.life = ini_read_real ("savedata", "Lives", global.life);
    else
        global.life = 4;
        
    ini_close();
    
    /*global.life = ini_read_string ("savedata", "Lives", string (global.life));
    global.totalrings = ini_read_string ("savedata", "Rings", string (global.totalrings));
    global.gems = ini_read_string ("savedata", "Gems", string (global.gems));
    global.secondsFile = ini_read_string ("savedata", "secondsFile", string (global.secondsFile));
    global.minutesFile = ini_read_string ("savedata", "minutesFile", string (global.minutesFile));
    global.hoursFile = ini_read_string ("savedata", "hoursFile", string (global.hoursFile));
    global.ch1 = ini_read_string ("savedata", "Chaosemerald1", string (global.ch1));
    global.ch2 = ini_read_string ("savedata", "Chaosemerald2", string (global.ch2));
    
    ini_close();  
//}

else if file_exists ("save2.sav")
{
    ini_open ("save2.sav");
    
    global.secondsFile = ini_read_real ("savedata2", "secondsFile", global.secondsFile);
    global.minutesFile = ini_read_real ("savedata2", "minutesFile", global.minutesFile);
    global.hoursFile = ini_read_real ("savedata2", "hoursFile", global.hoursFile);
    global.Z1_1 = ini_read_real ("savedata2", "Z1-1", global.Z1_1);
    global.Z1_1Knux = ini_read_real ("savedata2", "Z1-1Knux", global.Z1_1Knux);
    global.Z1_1Amy = ini_read_real ("savedata2", "Z1-1Amy", global.Z1_1Amy);
    global.Z1_B = ini_read_real ("savedata2", "Z1-B", global.Z1_B);
    global.Z1_BKnux = ini_read_real ("savedata2", "Z1-BKnux", global.Z1_BKnux);
    global.Z1_BAmy = ini_read_real ("savedata2", "Z1-BAmy", global.Z1_BAmy);
    global.Z2_1 = ini_read_real ("savedata2", "Z2-1", global.Z2_1);
    global.Z2_1Knux = ini_read_real ("savedata2", "Z2-1Knux", global.Z2_1Knux);
    global.Z2_B = ini_read_real ("savedata2", "Z2-B", global.Z2_B);
    global.Z2_BKnux = ini_read_real ("savedata2", "Z2-BKnux", global.Z2_BKnux);
    global.Z2_BAmy = ini_read_real ("savedata2", "Z2-BAmy", global.Z2_BAmy);
    global.S1 = ini_read_real ("savedata2", "S1", global.S1);
    global.S1S = ini_read_real ("savedata2", "S1S", global.S1S);
    global.S2 = ini_read_real ("savedata2", "S2", global.S2);
    global.ch1 = ini_read_real ("savedata2", "Chaosemerald1", global.ch1);
    global.ch2 = ini_read_real ("savedata2", "Chaosemerald2", global.ch2);
    global.life = ini_read_real ("savedata2", "Lives", global.life);
    global.gems = ini_read_real ("savedata2", "Gems", global.gems);
    global.totalrings = ini_read_real ("savedata2", "Rings", global.totalrings);
    global.getHeart0 = ini_read_real ("savedata2", "Heartholder0", global.getHeart0);
    global.getHeart1 = ini_read_real ("savedata2", "Heartholder1", global.getHeart1);
    global.seal0 = ini_read_real ("savedata2", "MagicSeal0", global.seal0);
    global.seal0A = ini_read_real ("savedata2", "MagicSeal0A", global.seal0A);
    global.seal0B = ini_read_real ("savedata2", "MagicSeal0B", global.seal0B);
    global.maxHearts = ini_read_real ("savedata2", "Maxhearts", global.maxHearts);
    global.monkeyLearnt = ini_read_real ("savedata2", "Monkey", global.monkeyLearnt);
    global.elephantLearnt = ini_read_real ("savedata2", "Elephant", global.elephantLearnt);
    global.harpyLearnt = ini_read_real ("savedata2", "Harpy", global.harpyLearnt);
    global.stomp = ini_read_real ("savedata2", "Stomp", global.stomp);
    global.slide = ini_read_real ("savedata2", "Slide", global.slide);
    global.punch = ini_read_real ("savedata2", "Punch", global.punch);
    global.drill = ini_read_real ("savedata2", "Drill", global.drill);
    global.tornado = ini_read_real ("savedata2", "Tornado", global.tornado);
    global.dialogue0 = ini_read_real ("savedata2", "Dialogue 0", global.dialogue0);
    global.dialogue1 = ini_read_real ("savedata2", "Dialogue 1", global.dialogue1);
    global.halfpotions = ini_read_real ("savedata2", "Half Potions", global.halfpotions);
    global.fullpotions = ini_read_real ("savedata2", "Full Potions", global.fullpotions);
    global.autopotions = ini_read_real ("savedata2", "Auto-Potions", global.autopotions);
    global.pikeballs = ini_read_real ("savedata2", "Pike Balls", global.pikeballs);
    global.superpikeballs = ini_read_real ("savedata2", "Super Pike Balls", global.superpikeballs);
    global.fireballs = ini_read_real ("savedata2", "Fireballs", global.fireballs);
    global.keys = ini_read_real ("savedata2", "Keys", global.keys);
    global.d1door = ini_read_real ("savedata2", "D1D", global.d1door);
    global.mdoor1 = ini_read_real ("savedata2", "M1D", global.mdoor1);
    global.doorpass1 = ini_read_real ("savedata2", "DP1", global.doorpass1);
    global.doorpass2 = ini_read_real ("savedata2", "DP2", global.doorpass2);
    global.doorpass3 = ini_read_real ("savedata2", "DP3", global.doorpass3);
    global.ringItem = ini_read_real ("savedata2", "Ring Item", global.ringItem);
    global.tablet = ini_read_real ("savedata2", "Tablet", global.tablet);
    global.chest1 = ini_read_real ("savedata2", "Chest 1", global.chest1);
    global.chest2 = ini_read_real ("savedata2", "Chest 2", global.chest2);
    global.chest3 = ini_read_real ("savedata2", "Chest 3", global.chest3);
    global.chest4 = ini_read_real ("savedata2", "Chest 4", global.chest4);
    global.chest1L = ini_read_real ("savedata2", "Chest 1L", global.chest1L);
    global.chest2L = ini_read_real ("savedata2", "Chest 2L", global.chest2L);
    global.chest3L = ini_read_real ("savedata2", "Chest 3L", global.chest3L);
    global.chest4L = ini_read_real ("savedata2", "Chest 4L", global.chest4L);
    
    global.life = ini_read_string ("savedata2", "Lives", string (global.life));
    global.totalrings = ini_read_string ("savedata2", "Rings", string (global.totalrings));
    global.gems = ini_read_string ("savedata2", "Gems", string (global.gems));
    global.secondsFile = ini_read_string ("savedata2", "secondsFile", string (global.secondsFile));
    global.minutesFile = ini_read_string ("savedata2", "minutesFile", string (global.minutesFile));
    global.hoursFile = ini_read_string ("savedata2", "hoursFile", string (global.hoursFile));
    global.ch1 = ini_read_string ("savedata2", "Chaosemerald1", string (global.ch1));
    global.ch2 = ini_read_string ("savedata2", "Chaosemerald2", string (global.ch2));
    
    ini_close();  
}
