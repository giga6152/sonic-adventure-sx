///scrSave()

audio_stop_all();

//if global.saveSlotID == 1
//{
    if file_exists ("save.sav")
        file_delete ("save.sav");
    
        
    ini_open ("save.sav");
    
    ini_write_real ("savedata", "secondsFile", global.secondsFile);
    ini_write_real ("savedata", "minutesFile", global.minutesFile);
    ini_write_real ("savedata", "hoursFile", global.hoursFile);
    ini_write_real ("savedata", "Chaosemerald1", global.ch1);
    ini_write_real ("savedata", "Chaosemerald2", global.ch2);
    ini_write_real ("savedata", "Z1-1", global.Z1_1);
    ini_write_real ("savedata", "Z1-1Knux", global.Z1_1Knux);
    ini_write_real ("savedata", "Z1-1Amy", global.Z1_1Amy);
    ini_write_real ("savedata", "Z1-B", global.Z1_B);
    ini_write_real ("savedata", "Z1-BKnux", global.Z1_BKnux);
    ini_write_real ("savedata", "Z1-BAmy", global.Z1_BAmy);
    ini_write_real ("savedata", "Z2-1", global.Z2_1);
    ini_write_real ("savedata", "Z2-1Knux", global.Z2_1Knux);
    ini_write_real ("savedata", "Z2-B", global.Z2_B);
    ini_write_real ("savedata", "Z2-BKnux", global.Z2_BKnux);
    ini_write_real ("savedata", "Z2-BAmy", global.Z2_BAmy);
    ini_write_real ("savedata", "S1", global.S1);
    ini_write_real ("savedata", "S1S", global.S1S);
    ini_write_real ("savedata", "S2", global.S2);
    ini_write_real ("savedata", "Lives", global.life);
    ini_write_real ("savedata", "Gems", global.gems);
    ini_write_real ("savedata", "Rings", global.totalrings);
    ini_write_real ("savedata", "Heartholder0", global.getHeart0);
    ini_write_real ("savedata", "Heartholder1", global.getHeart1);
    ini_write_real ("savedata", "MagicSeal0", global.seal0);
    ini_write_real ("savedata", "MagicSeal0A", global.seal0A);
    ini_write_real ("savedata", "MagicSeal0B", global.seal0B);
    ini_write_real ("savedata", "Maxhearts", global.maxHearts);
    ini_write_real ("savedata", "Monkey", global.monkeyLearnt);
    ini_write_real ("savedata", "Elephant", global.elephantLearnt);
    ini_write_real ("savedata", "Harpy", global.harpyLearnt);
    ini_write_real ("savedata", "Stomp", global.stomp);
    ini_write_real ("savedata", "Slide", global.slide);
    ini_write_real ("savedata", "Punch", global.punch);
    ini_write_real ("savedata", "Drill", global.drill);
    ini_write_real ("savedata", "Tornado", global.tornado);
    ini_write_real ("savedata", "Dialogue 0", global.dialogue0);
    ini_write_real ("savedata", "Dialogue 1", global.dialogue1);
    ini_write_real ("savedata", "Half Potions", global.halfpotions);
    ini_write_real ("savedata", "Full Potions", global.fullpotions);
    ini_write_real ("savedata", "Auto-Potions", global.autopotions);
    ini_write_real ("savedata", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata", "Fireballs", global.fireballs);
    ini_write_real ("savedata", "Keys", global.keys);
    ini_write_real ("savedata", "D1D", global.d1door);
    ini_write_real ("savedata", "M1D", global.mdoor1);
    ini_write_real ("savedata", "DP1", global.doorpass1);
    ini_write_real ("savedata", "DP2", global.doorpass2);
    ini_write_real ("savedata", "DP3", global.doorpass3);
    ini_write_real ("savedata", "Ring Item", global.ringItem);
    ini_write_real ("savedata", "Tablet", global.tablet);
    ini_write_real ("savedata", "Chest 1", global.chest1);
    ini_write_real ("savedata", "Chest 2", global.chest2);
    ini_write_real ("savedata", "Chest 3", global.chest3);
    ini_write_real ("savedata", "Chest 4", global.chest4);
    ini_write_real ("savedata", "Chest 1L", global.chest1L);
    ini_write_real ("savedata", "Chest 2L", global.chest2L);
    ini_write_real ("savedata", "Chest 3L", global.chest3L);
    ini_write_real ("savedata", "Chest 4L", global.chest4L);
    
    /*ini_write_string ("savedata", "Lives", string (global.life));
    ini_write_string ("savedata", "Rings", string (global.totalrings));
    ini_write_string ("savedata", "Gems", string (global.gems));
    ini_write_string ("savedata", "secondsFile", string (global.secondsFile));
    ini_write_string ("savedata", "minutesFile", string (global.minutesFile));
    ini_write_string ("savedata", "hoursFile", string (global.hoursFile));
    ini_write_string ("savedata", "Chaosemerald1", string (global.ch1));
    ini_write_string ("savedata", "Chaosemerald2", string (global.ch2));
    
    ini_close();
//}

/*else if global.saveSlotID == 2
{
    if file_exists ("save2.sav")
        file_delete ("save2.sav");
    
        
    ini_open ("save2.sav");
    
    ini_write_real ("savedata2", "secondsFile", global.secondsFile);
    ini_write_real ("savedata2", "minutesFile", global.minutesFile);
    ini_write_real ("savedata2", "hoursFile", global.hoursFile);
    ini_write_real ("savedata2", "Chaosemerald1", global.ch1);
    ini_write_real ("savedata2", "Chaosemerald2", global.ch2);
    ini_write_real ("savedata2", "Z1-1", global.Z1_1);
    ini_write_real ("savedata2", "Z1-1Knux", global.Z1_1Knux);
    ini_write_real ("savedata2", "Z1-1Amy", global.Z1_1Amy);
    ini_write_real ("savedata2", "Z1-B", global.Z1_B);
    ini_write_real ("savedata2", "Z1-BKnux", global.Z1_BKnux);
    ini_write_real ("savedata2", "Z1-BAmy", global.Z1_BAmy);
    ini_write_real ("savedata2", "Z2-1", global.Z2_1);
    ini_write_real ("savedata2", "Z2-1Knux", global.Z2_1Knux);
    ini_write_real ("savedata2", "Z2-B", global.Z2_B);
    ini_write_real ("savedata2", "Z2-BKnux", global.Z2_BKnux);
    ini_write_real ("savedata2", "Z2-BAmy", global.Z2_BAmy);
    ini_write_real ("savedata2", "S1", global.S1);
    ini_write_real ("savedata2", "S1S", global.S1S);
    ini_write_real ("savedata2", "S2", global.S2);
    ini_write_real ("savedata2", "Lives", global.life);
    ini_write_real ("savedata2", "Gems", global.gems);
    ini_write_real ("savedata2", "Rings", global.totalrings);
    ini_write_real ("savedata2", "Heartholder0", global.getHeart0);
    ini_write_real ("savedata2", "Heartholder1", global.getHeart1);
    ini_write_real ("savedata2", "MagicSeal0", global.seal0);
    ini_write_real ("savedata2", "MagicSeal0A", global.seal0A);
    ini_write_real ("savedata2", "MagicSeal0B", global.seal0B);
    ini_write_real ("savedata2", "Maxhearts", global.maxHearts);
    ini_write_real ("savedata2", "Monkey", global.monkeyLearnt);
    ini_write_real ("savedata2", "Elephant", global.elephantLearnt);
    ini_write_real ("savedata2", "Harpy", global.harpyLearnt);
    ini_write_real ("savedata2", "Stomp", global.stomp);
    ini_write_real ("savedata2", "Slide", global.slide);
    ini_write_real ("savedata2", "Punch", global.punch);
    ini_write_real ("savedata2", "Drill", global.drill);
    ini_write_real ("savedata2", "Tornado", global.tornado);
    ini_write_real ("savedata2", "Dialogue 0", global.dialogue0);
    ini_write_real ("savedata2", "Dialogue 1", global.dialogue1);
    ini_write_real ("savedata2", "Half Potions", global.halfpotions);
    ini_write_real ("savedata2", "Full Potions", global.fullpotions);
    ini_write_real ("savedata2", "Auto-Potions", global.autopotions);
    ini_write_real ("savedata2", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata2", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata2", "Fireballs", global.fireballs);
    ini_write_real ("savedata2", "Keys", global.keys);
    ini_write_real ("savedata2", "D1D", global.d1door);
    ini_write_real ("savedata2", "M1D", global.mdoor1);
    ini_write_real ("savedata2", "DP1", global.doorpass1);
    ini_write_real ("savedata2", "DP2", global.doorpass2);
    ini_write_real ("savedata2", "DP3", global.doorpass3);
    ini_write_real ("savedata2", "Ring Item", global.ringItem);
    ini_write_real ("savedata2", "Tablet", global.tablet);
    ini_write_real ("savedata2", "Chest 1", global.chest1);
    ini_write_real ("savedata2", "Chest 2", global.chest2);
    ini_write_real ("savedata2", "Chest 3", global.chest3);
    ini_write_real ("savedata2", "Chest 4", global.chest4);
    ini_write_real ("savedata2", "Chest 1L", global.chest1L);
    ini_write_real ("savedata2", "Chest 2L", global.chest2L);
    ini_write_real ("savedata2", "Chest 3L", global.chest3L);
    ini_write_real ("savedata2", "Chest 4L", global.chest4L);
    
    ini_write_string ("savedata2", "Lives", string (global.life));
    ini_write_string ("savedata2", "Rings", string (global.totalrings));
    ini_write_string ("savedata2", "Gems", string (global.gems));
    ini_write_string ("savedata2", "secondsFile", string (global.secondsFile));
    ini_write_string ("savedata2", "minutesFile", string (global.minutesFile));
    ini_write_string ("savedata2", "hoursFile", string (global.hoursFile));
    ini_write_string ("savedata2", "Chaosemerald1", string (global.ch1));
    ini_write_string ("savedata2", "Chaosemerald2", string (global.ch2));
    
    ini_close();
}
