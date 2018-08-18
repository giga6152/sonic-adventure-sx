///scrLoadMData()

//This loads the data once the save file has been opened
if global.savedata == 1
{
    if file_exists (global.dir+"save.sav")
    {
        ini_open (global.dir+"save.sav");
        
        //First, read the data shown on the file
        global.millisecondsF[1] = ini_read_real ("savedata", "millisecondsFile", global.millisecondsF[1]);
        global.secondsF[1] = ini_read_real ("savedata", "secondsFile", global.secondsF[1]);
        global.minutesF[1] = ini_read_real ("savedata", "minutesFile", global.minutesF[1]);
        global.hoursF[1] = ini_read_real ("savedata", "hoursFile", global.hoursF[1]);
        global.ch1[1] = ini_read_real ("savedata", "Chaosemerald1", global.ch1[1]);
        global.ch2[1] = ini_read_real ("savedata", "Chaosemerald2", global.ch2[1]);
        global.gems[1] = ini_read_real ("savedata", "Gems", global.gems[1]);
        global.totalrings[1] = ini_read_real ("savedata", "Rings", global.totalrings[1]);
        global.seal0[1] = ini_read_real ("savedata", "MagicSeal0", global.seal0[1]);
        global.goldMedals[1] = ini_read_real ("savedata", "Gold Medals", global.goldMedals[1]);
        global.blueMedals[1] = ini_read_real ("savedata", "Blue Medals", global.blueMedals[1]);
        global.clears[1] = ini_read_real ("savedata", "Clears", global.clears[1]);
        global.lastsave_year[1] = ini_read_real ("savedata", "Last Saved Year", global.lastsave_year[1]);
        global.lastsave_month[1] = ini_read_real ("savedata", "Last Saved Month", global.lastsave_month[1]);
        global.lastsave_day[1] = ini_read_real ("savedata", "Last Saved Day", global.lastsave_day[1]);
        global.lastsave_hour[1] = ini_read_real ("savedata", "Last Saved Hour", global.lastsave_hour[1]);
        global.lastsave_minute[1] = ini_read_real ("savedata", "Last Saved Minute", global.lastsave_minute[1]);
        global.lastsave_second[1] = ini_read_real ("savedata", "Last Saved Second", global.lastsave_second[1]);
        scrReadStats1();
        
        if global.life[1] >= 4
           global.life[1] = ini_read_real ("savedata", "Lives", global.life[1]);
        else
            global.life[1] = 4;
        
        //Next, read the data that is not shown on the file
        global.stage_max[0] = ini_read_real ("savedata", "sonic_maxstage", global.stage_max[0]);
        global.stage_max[1] = ini_read_real ("savedata", "shantae_maxstage", global.stage_max[1]);
        global.stage_max[2] = ini_read_real ("savedata", "knux_maxstage", global.stage_max[2]);
        global.stage_max[3] = ini_read_real ("savedata", "sky_maxstage", global.stage_max[3]);
        global.stage_max[4] = ini_read_real ("savedata", "shadow_maxstage", global.stage_max[4]);
        global.stage_max[5] = ini_read_real ("savedata", "bolo_maxstage", global.stage_max[5]);
        global.stage_max[6] = ini_read_real ("savedata", "silver_maxstage", global.stage_max[6]);
        global.stage_max[7] = ini_read_real ("savedata", "rotty_maxstage", global.stage_max[7]);
        global.stage_max[8] = ini_read_real ("savedata", "tails_maxstage", global.stage_max[8]);
        global.stage_max[9] = ini_read_real ("savedata", "vinegar_maxstage", global.stage_max[9]);
        global.stage_max[10] = ini_read_real ("savedata", "amy_maxstage", global.stage_max[10]);
        global.stage_max[11] = ini_read_real ("savedata", "twitch_maxstage", global.stage_max[11]);
        global.getHeart[0] = ini_read_real ("savedata", "Heartholder0", global.getHeart[0]);
        global.getHeart[1] = ini_read_real ("savedata", "Heartholder1", global.getHeart[1]);
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
        global.fleshpops = ini_read_real ("savedata", "Flesh Pops", global.fleshpops);
        global.monstermilk = ini_read_real ("savedata", "Monster Milk", global.monstermilk);
        global.super_monstermilk = ini_read_real ("savedata", "Super Monster Milk", global.super_monstermilk);
        global.pikeballs = ini_read_real ("savedata", "Pike Balls", global.pikeballs);
        global.superpikeballs = ini_read_real ("savedata", "Super Pike Balls", global.superpikeballs);
        global.bubbleshields = ini_read_real ("savedata", "Bubbleshields", global.bubbleshields);
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
        global.pirategun = ini_read_real ("savedata", "Pirate Gun", global.pirategun);
        
        ini_close();
    }
    else
    {
        scrInitialize();
        
    }
}
else if global.savedata == 2
{
    if file_exists (global.dir+"save2.sav")
    {
        ini_open (global.dir+"save2.sav");
        
        //First, read the data shown on the file
        global.millisecondsF[2] = ini_read_real ("savedata2", "millisecondsFile", global.millisecondsF[2]);
        global.secondsF[2] = ini_read_real ("savedata2", "secondsFile", global.secondsF[2]);
        global.minutesF[2] = ini_read_real ("savedata2", "minutesFile", global.minutesF[2]);
        global.hoursF[2] = ini_read_real ("savedata2", "hoursFile", global.hoursF[2]);
        global.ch1[2] = ini_read_real ("savedata2", "Chaosemerald1", global.ch1[2]);
        global.ch2[2] = ini_read_real ("savedata2", "Chaosemerald2", global.ch2[2]);
        global.gems[2] = ini_read_real ("savedata2", "Gems", global.gems[2]);
        global.totalrings[2] = ini_read_real ("savedata2", "Rings", global.totalrings[2]);
        global.seal0[2] = ini_read_real ("savedata2", "MagicSeal0", global.seal0[2]);
        global.goldMedals[2] = ini_read_real ("savedata2", "Gold Medals", global.goldMedals[2]);
        global.blueMedals[2] = ini_read_real ("savedata2", "Blue Medals", global.blueMedals[2]);
        global.clears[2] = ini_read_real ("savedata2", "Clears", global.clears[2]);
        global.lastsave_year[2] = ini_read_real ("savedata2", "Last Saved Year", global.lastsave_year[2]);
        global.lastsave_month[2] = ini_read_real ("savedata2", "Last Saved Month", global.lastsave_month[2]);
        global.lastsave_day[2] = ini_read_real ("savedata2", "Last Saved Day", global.lastsave_day[2]);
        global.lastsave_hour[2] = ini_read_real ("savedata2", "Last Saved Hour", global.lastsave_hour[2]);
        global.lastsave_minute[2] = ini_read_real ("savedata2", "Last Saved Minute", global.lastsave_minute[2]);
        global.lastsave_second[2] = ini_read_real ("savedata2", "Last Saved Second", global.lastsave_second[2]);
        scrReadStats2();
        
        if global.life[2] >= 4
           global.life[2] = ini_read_real ("savedata2", "Lives", global.life[2]);
        else
            global.life[2] = 4;
        
        //Next, read the data that is not shown on the file
        global.stage_max[0] = ini_read_real ("savedata2", "sonic_maxstage", global.stage_max[0]);
        global.stage_max[1] = ini_read_real ("savedata2", "shantae_maxstage", global.stage_max[1]);
        global.stage_max[2] = ini_read_real ("savedata2", "knux_maxstage", global.stage_max[2]);
        global.stage_max[3] = ini_read_real ("savedata2", "sky_maxstage", global.stage_max[3]);
        global.stage_max[4] = ini_read_real ("savedata2", "shadow_maxstage", global.stage_max[4]);
        global.stage_max[5] = ini_read_real ("savedata2", "bolo_maxstage", global.stage_max[5]);
        global.stage_max[6] = ini_read_real ("savedata2", "silver_maxstage", global.stage_max[6]);
        global.stage_max[7] = ini_read_real ("savedata2", "rotty_maxstage", global.stage_max[7]);
        global.stage_max[8] = ini_read_real ("savedata2", "tails_maxstage", global.stage_max[8]);
        global.stage_max[9] = ini_read_real ("savedata2", "vinegar_maxstage", global.stage_max[9]);
        global.stage_max[10] = ini_read_real ("savedata2", "amy_maxstage", global.stage_max[10]);
        global.stage_max[11] = ini_read_real ("savedata2", "twitch_maxstage", global.stage_max[11]);
        global.getHeart[0] = ini_read_real ("savedata2", "Heartholder0", global.getHeart[0]);
        global.getHeart[1] = ini_read_real ("savedata2", "Heartholder1", global.getHeart[1]);
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
        global.fleshpops = ini_read_real ("savedata2", "Flesh Pops", global.fleshpops);
        global.monstermilk = ini_read_real ("savedata2", "Monster Milk", global.monstermilk);
        global.super_monstermilk = ini_read_real ("savedata2", "Super Monster Milk", global.super_monstermilk);
        global.pikeballs = ini_read_real ("savedata2", "Pike Balls", global.pikeballs);
        global.superpikeballs = ini_read_real ("savedata2", "Super Pike Balls", global.superpikeballs);
        global.bubbleshields = ini_read_real ("savedata2", "Bubbleshields", global.bubbleshields);
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
        global.pirategun = ini_read_real ("savedata2", "Pirate Gun", global.pirategun);
        
        ini_close();
    }
    else
    {
        scrInitialize();
        
    }
}
else if global.savedata == 3
{
    if file_exists (global.dir+"save3.sav")
    {
        ini_open (global.dir+"save3.sav");
        
        //First, read the data shown on the file
        global.millisecondsF[3] = ini_read_real ("savedata3", "millisecondsFile", global.millisecondsF[3]);
        global.secondsF[3] = ini_read_real ("savedata3", "secondsFile", global.secondsF[3]);
        global.minutesF[3] = ini_read_real ("savedata3", "minutesFile", global.minutesF[3]);
        global.hoursF[3] = ini_read_real ("savedata3", "hoursFile", global.hoursF[3]);
        global.ch1[3] = ini_read_real ("savedata3", "Chaosemerald1", global.ch1[3]);
        global.ch2[3] = ini_read_real ("savedata3", "Chaosemerald2", global.ch2[3]);
        global.gems[3] = ini_read_real ("savedata3", "Gems", global.gems[3]);
        global.totalrings[3] = ini_read_real ("savedata3", "Rings", global.totalrings[3]);
        global.seal0[3] = ini_read_real ("savedata3", "MagicSeal0", global.seal0[3]);
        global.goldMedals[3] = ini_read_real ("savedata3", "Gold Medals", global.goldMedals[3]);
        global.blueMedals[3] = ini_read_real ("savedata3", "Blue Medals", global.blueMedals[3]);
        global.clears[3] = ini_read_real ("savedata3", "Clears", global.clears[3]);
        global.lastsave_year[3] = ini_read_real ("savedata3", "Last Saved Year", global.lastsave_year[3]);
        global.lastsave_month[3] = ini_read_real ("savedata3", "Last Saved Month", global.lastsave_month[3]);
        global.lastsave_day[3] = ini_read_real ("savedata3", "Last Saved Day", global.lastsave_day[3]);
        global.lastsave_hour[3] = ini_read_real ("savedata3", "Last Saved Hour", global.lastsave_hour[3]);
        global.lastsave_minute[3] = ini_read_real ("savedata3", "Last Saved Minute", global.lastsave_minute[3]);
        global.lastsave_second[3] = ini_read_real ("savedata3", "Last Saved Second", global.lastsave_second[3]);
        scrReadStats3();
        
        if global.life[3] >= 4
           global.life[3] = ini_read_real ("savedata3", "Lives", global.life[3]);
        else
            global.life[3] = 4;
        
        //Next, read the data that is not shown on the file
        global.stage_max[0] = ini_read_real ("savedata3", "sonic_maxstage", global.stage_max[0]);
        global.stage_max[1] = ini_read_real ("savedata3", "shantae_maxstage", global.stage_max[1]);
        global.stage_max[2] = ini_read_real ("savedata3", "knux_maxstage", global.stage_max[2]);
        global.stage_max[3] = ini_read_real ("savedata3", "sky_maxstage", global.stage_max[3]);
        global.stage_max[4] = ini_read_real ("savedata3", "shadow_maxstage", global.stage_max[4]);
        global.stage_max[5] = ini_read_real ("savedata3", "bolo_maxstage", global.stage_max[5]);
        global.stage_max[6] = ini_read_real ("savedata3", "silver_maxstage", global.stage_max[6]);
        global.stage_max[7] = ini_read_real ("savedata3", "rotty_maxstage", global.stage_max[7]);
        global.stage_max[8] = ini_read_real ("savedata3", "tails_maxstage", global.stage_max[8]);
        global.stage_max[9] = ini_read_real ("savedata3", "vinegar_maxstage", global.stage_max[9]);
        global.stage_max[10] = ini_read_real ("savedata3", "amy_maxstage", global.stage_max[10]);
        global.stage_max[11] = ini_read_real ("savedata3", "twitch_maxstage", global.stage_max[11]);
        global.getHeart[0] = ini_read_real ("savedata3", "Heartholder0", global.getHeart[0]);
        global.getHeart[1] = ini_read_real ("savedata3", "Heartholder1", global.getHeart[1]);
        global.seal0A = ini_read_real ("savedata3", "MagicSeal0A", global.seal0A);
        global.seal0B = ini_read_real ("savedata3", "MagicSeal0B", global.seal0B);
        global.maxHearts = ini_read_real ("savedata3", "Maxhearts", global.maxHearts);
        global.monkeyLearnt = ini_read_real ("savedata3", "Monkey", global.monkeyLearnt);
        global.elephantLearnt = ini_read_real ("savedata3", "Elephant", global.elephantLearnt);
        global.harpyLearnt = ini_read_real ("savedata3", "Harpy", global.harpyLearnt);
        global.stomp = ini_read_real ("savedata3", "Stomp", global.stomp);
        global.slide = ini_read_real ("savedata3", "Slide", global.slide);
        global.punch = ini_read_real ("savedata3", "Punch", global.punch);
        global.drill = ini_read_real ("savedata3", "Drill", global.drill);
        global.tornado = ini_read_real ("savedata3", "Tornado", global.tornado);
        global.dialogue0 = ini_read_real ("savedata3", "Dialogue 0", global.dialogue0);
        global.dialogue1 = ini_read_real ("savedata3", "Dialogue 1", global.dialogue1);
        global.halfpotions = ini_read_real ("savedata3", "Half Potions", global.halfpotions);
        global.fullpotions = ini_read_real ("savedata3", "Full Potions", global.fullpotions);
        global.autopotions = ini_read_real ("savedata3", "Auto-Potions", global.autopotions);
        global.fleshpops = ini_read_real ("savedata3", "Flesh Pops", global.fleshpops);
        global.monstermilk = ini_read_real ("savedata3", "Monster Milk", global.monstermilk);
        global.super_monstermilk = ini_read_real ("savedata3", "Super Monster Milk", global.super_monstermilk);
        global.pikeballs = ini_read_real ("savedata3", "Pike Balls", global.pikeballs);
        global.superpikeballs = ini_read_real ("savedata3", "Super Pike Balls", global.superpikeballs);
        global.bubbleshields = ini_read_real ("savedata3", "Bubbleshields", global.bubbleshields);
        global.fireballs = ini_read_real ("savedata3", "Fireballs", global.fireballs);
        global.keys = ini_read_real ("savedata3", "Keys", global.keys);
        global.d1door = ini_read_real ("savedata3", "D1D", global.d1door);
        global.mdoor1 = ini_read_real ("savedata3", "M1D", global.mdoor1);
        global.doorpass1 = ini_read_real ("savedata3", "DP1", global.doorpass1);
        global.doorpass2 = ini_read_real ("savedata3", "DP2", global.doorpass2);
        global.doorpass3 = ini_read_real ("savedata3", "DP3", global.doorpass3);
        global.ringItem = ini_read_real ("savedata3", "Ring Item", global.ringItem);
        global.tablet = ini_read_real ("savedata3", "Tablet", global.tablet);
        global.chest1 = ini_read_real ("savedata3", "Chest 1", global.chest1);
        global.chest2 = ini_read_real ("savedata3", "Chest 2", global.chest2);
        global.chest3 = ini_read_real ("savedata3", "Chest 3", global.chest3);
        global.chest4 = ini_read_real ("savedata3", "Chest 4", global.chest4);
        global.chest1L = ini_read_real ("savedata3", "Chest 1L", global.chest1L);
        global.chest2L = ini_read_real ("savedata3", "Chest 2L", global.chest2L);
        global.chest3L = ini_read_real ("savedata3", "Chest 3L", global.chest3L);
        global.chest4L = ini_read_real ("savedata3", "Chest 4L", global.chest4L);
        global.pirategun = ini_read_real ("savedata3", "Pirate Gun", global.pirategun);
        
        ini_close();
    }
    else
    {
        scrInitialize();
        
    }
}
else if global.savedata == 4
{
    if file_exists (global.dir+"save4.sav")
    {
        ini_open (global.dir+"save4.sav");
        
        //First, read the data shown on the file
        global.millisecondsF[4] = ini_read_real ("savedata4", "millisecondsFile", global.millisecondsF[4]);
        global.secondsF[4] = ini_read_real ("savedata4", "secondsFile", global.secondsF[4]);
        global.minutesF[4] = ini_read_real ("savedata4", "minutesFile", global.minutesF[4]);
        global.hoursF[4] = ini_read_real ("savedata4", "hoursFile", global.hoursF[4]);
        global.ch1[4] = ini_read_real ("savedata4", "Chaosemerald1", global.ch1[4]);
        global.ch2[4] = ini_read_real ("savedata4", "Chaosemerald2", global.ch2[4]);
        global.gems[4] = ini_read_real ("savedata4", "Gems", global.gems[4]);
        global.totalrings[4] = ini_read_real ("savedata4", "Rings", global.totalrings[4]);
        global.seal0[4] = ini_read_real ("savedata4", "MagicSeal0", global.seal0[4]);
        global.goldMedals[4] = ini_read_real ("savedata4", "Gold Medals", global.goldMedals[4]);
        global.blueMedals[4] = ini_read_real ("savedata4", "Blue Medals", global.blueMedals[4]);
        global.clears[4] = ini_read_real ("savedata4", "Clears", global.clears[4]);
        global.lastsave_year[4] = ini_read_real ("savedata4", "Last Saved Year", global.lastsave_year[4]);
        global.lastsave_month[4] = ini_read_real ("savedata4", "Last Saved Month", global.lastsave_month[4]);
        global.lastsave_day[4] = ini_read_real ("savedata4", "Last Saved Day", global.lastsave_day[4]);
        global.lastsave_hour[4] = ini_read_real ("savedata4", "Last Saved Hour", global.lastsave_hour[4]);
        global.lastsave_minute[4] = ini_read_real ("savedata4", "Last Saved Minute", global.lastsave_minute[4]);
        global.lastsave_second[4] = ini_read_real ("savedata4", "Last Saved Second", global.lastsave_second[4]);
        scrReadStats4();
        
        if global.life[4] >= 4
           global.life[4] = ini_read_real ("savedata4", "Lives", global.life[4]);
        else
            global.life[4] = 4;
        
        //Next, read the data that is not shown on the file
        global.stage_max[0] = ini_read_real ("savedata4", "sonic_maxstage", global.stage_max[0]);
        global.stage_max[1] = ini_read_real ("savedata4", "shantae_maxstage", global.stage_max[1]);
        global.stage_max[2] = ini_read_real ("savedata4", "knux_maxstage", global.stage_max[2]);
        global.stage_max[3] = ini_read_real ("savedata4", "sky_maxstage", global.stage_max[3]);
        global.stage_max[4] = ini_read_real ("savedata4", "shadow_maxstage", global.stage_max[4]);
        global.stage_max[5] = ini_read_real ("savedata4", "bolo_maxstage", global.stage_max[5]);
        global.stage_max[6] = ini_read_real ("savedata4", "silver_maxstage", global.stage_max[6]);
        global.stage_max[7] = ini_read_real ("savedata4", "rotty_maxstage", global.stage_max[7]);
        global.stage_max[8] = ini_read_real ("savedata4", "tails_maxstage", global.stage_max[8]);
        global.stage_max[9] = ini_read_real ("savedata4", "vinegar_maxstage", global.stage_max[9]);
        global.stage_max[10] = ini_read_real ("savedata4", "amy_maxstage", global.stage_max[10]);
        global.stage_max[11] = ini_read_real ("savedata4", "twitch_maxstage", global.stage_max[11]);
        global.getHeart[0] = ini_read_real ("savedata4", "Heartholder0", global.getHeart[0]);
        global.getHeart[1] = ini_read_real ("savedata4", "Heartholder1", global.getHeart[1]);
        global.seal0A = ini_read_real ("savedata4", "MagicSeal0A", global.seal0A);
        global.seal0B = ini_read_real ("savedata4", "MagicSeal0B", global.seal0B);
        global.maxHearts = ini_read_real ("savedata4", "Maxhearts", global.maxHearts);
        global.monkeyLearnt = ini_read_real ("savedata4", "Monkey", global.monkeyLearnt);
        global.elephantLearnt = ini_read_real ("savedata4", "Elephant", global.elephantLearnt);
        global.harpyLearnt = ini_read_real ("savedata4", "Harpy", global.harpyLearnt);
        global.stomp = ini_read_real ("savedata4", "Stomp", global.stomp);
        global.slide = ini_read_real ("savedata4", "Slide", global.slide);
        global.punch = ini_read_real ("savedata4", "Punch", global.punch);
        global.drill = ini_read_real ("savedata4", "Drill", global.drill);
        global.tornado = ini_read_real ("savedata4", "Tornado", global.tornado);
        global.dialogue0 = ini_read_real ("savedata4", "Dialogue 0", global.dialogue0);
        global.dialogue1 = ini_read_real ("savedata4", "Dialogue 1", global.dialogue1);
        global.halfpotions = ini_read_real ("savedata4", "Half Potions", global.halfpotions);
        global.fullpotions = ini_read_real ("savedata4", "Full Potions", global.fullpotions);
        global.autopotions = ini_read_real ("savedata4", "Auto-Potions", global.autopotions);
        global.fleshpops = ini_read_real ("savedata4", "Flesh Pops", global.fleshpops);
        global.monstermilk = ini_read_real ("savedata4", "Monster Milk", global.monstermilk);
        global.super_monstermilk = ini_read_real ("savedata4", "Super Monster Milk", global.super_monstermilk);
        global.pikeballs = ini_read_real ("savedata4", "Pike Balls", global.pikeballs);
        global.superpikeballs = ini_read_real ("savedata4", "Super Pike Balls", global.superpikeballs);
        global.bubbleshields = ini_read_real ("savedata4", "Bubbleshields", global.bubbleshields);
        global.fireballs = ini_read_real ("savedata4", "Fireballs", global.fireballs);
        global.keys = ini_read_real ("savedata4", "Keys", global.keys);
        global.d1door = ini_read_real ("savedata4", "D1D", global.d1door);
        global.mdoor1 = ini_read_real ("savedata4", "M1D", global.mdoor1);
        global.doorpass1 = ini_read_real ("savedata4", "DP1", global.doorpass1);
        global.doorpass2 = ini_read_real ("savedata4", "DP2", global.doorpass2);
        global.doorpass3 = ini_read_real ("savedata4", "DP3", global.doorpass3);
        global.ringItem = ini_read_real ("savedata4", "Ring Item", global.ringItem);
        global.tablet = ini_read_real ("savedata4", "Tablet", global.tablet);
        global.chest1 = ini_read_real ("savedata4", "Chest 1", global.chest1);
        global.chest2 = ini_read_real ("savedata4", "Chest 2", global.chest2);
        global.chest3 = ini_read_real ("savedata4", "Chest 3", global.chest3);
        global.chest4 = ini_read_real ("savedata4", "Chest 4", global.chest4);
        global.chest1L = ini_read_real ("savedata4", "Chest 1L", global.chest1L);
        global.chest2L = ini_read_real ("savedata4", "Chest 2L", global.chest2L);
        global.chest3L = ini_read_real ("savedata4", "Chest 3L", global.chest3L);
        global.chest4L = ini_read_real ("savedata4", "Chest 4L", global.chest4L);
        global.pirategun = ini_read_real ("savedata4", "Pirate Gun", global.pirategun);
        
        ini_close();
    }
    else
    {
        scrInitialize();
        
    }
}
else if global.savedata == 5
{
    if file_exists (global.dir+"save5.sav")
    {
        ini_open (global.dir+"save5.sav");
        
        //First, read the data shown on the file
        global.millisecondsF[5] = ini_read_real ("savedata5", "millisecondsFile", global.millisecondsF[5]);
        global.secondsF[5] = ini_read_real ("savedata5", "secondsFile", global.secondsF[5]);
        global.minutesF[5] = ini_read_real ("savedata5", "minutesFile", global.minutesF[5]);
        global.hoursF[5] = ini_read_real ("savedata5", "hoursFile", global.hoursF[5]);
        global.ch1[5] = ini_read_real ("savedata5", "Chaosemerald1", global.ch1[5]);
        global.ch2[5] = ini_read_real ("savedata5", "Chaosemerald2", global.ch2[5]);
        global.gems[5] = ini_read_real ("savedata5", "Gems", global.gems[5]);
        global.totalrings[5] = ini_read_real ("savedata5", "Rings", global.totalrings[5]);
        global.seal0[5] = ini_read_real ("savedata5", "MagicSeal0", global.seal0[5]);
        global.goldMedals[5] = ini_read_real ("savedata5", "Gold Medals", global.goldMedals[5]);
        global.blueMedals[5] = ini_read_real ("savedata5", "Blue Medals", global.blueMedals[5]);
        global.clears[5] = ini_read_real ("savedata5", "Clears", global.clears[5]);
        global.lastsave_year[5] = ini_read_real ("savedata5", "Last Saved Year", global.lastsave_year[5]);
        global.lastsave_month[5] = ini_read_real ("savedata5", "Last Saved Month", global.lastsave_month[5]);
        global.lastsave_day[5] = ini_read_real ("savedata5", "Last Saved Day", global.lastsave_day[5]);
        global.lastsave_hour[5] = ini_read_real ("savedata5", "Last Saved Hour", global.lastsave_hour[5]);
        global.lastsave_minute[5] = ini_read_real ("savedata5", "Last Saved Minute", global.lastsave_minute[5]);
        global.lastsave_second[5] = ini_read_real ("savedata5", "Last Saved Second", global.lastsave_second[5]);
        scrReadStats5();
        
        if global.life[5] >= 4
           global.life[5] = ini_read_real ("savedata5", "Lives", global.life[5]);
        else
            global.life[5] = 4;
        
        //Next, read the data that is not shown on the file
        global.stage_max[0] = ini_read_real ("savedata5", "sonic_maxstage", global.stage_max[0]);
        global.stage_max[1] = ini_read_real ("savedata5", "shantae_maxstage", global.stage_max[1]);
        global.stage_max[2] = ini_read_real ("savedata5", "knux_maxstage", global.stage_max[2]);
        global.stage_max[3] = ini_read_real ("savedata5", "sky_maxstage", global.stage_max[3]);
        global.stage_max[4] = ini_read_real ("savedata5", "shadow_maxstage", global.stage_max[4]);
        global.stage_max[5] = ini_read_real ("savedata5", "bolo_maxstage", global.stage_max[5]);
        global.stage_max[6] = ini_read_real ("savedata5", "silver_maxstage", global.stage_max[6]);
        global.stage_max[7] = ini_read_real ("savedata5", "rotty_maxstage", global.stage_max[7]);
        global.stage_max[8] = ini_read_real ("savedata5", "tails_maxstage", global.stage_max[8]);
        global.stage_max[9] = ini_read_real ("savedata5", "vinegar_maxstage", global.stage_max[9]);
        global.stage_max[10] = ini_read_real ("savedata5", "amy_maxstage", global.stage_max[10]);
        global.stage_max[11] = ini_read_real ("savedata5", "twitch_maxstage", global.stage_max[11]);
        global.getHeart[0] = ini_read_real ("savedata5", "Heartholder0", global.getHeart[0]);
        global.getHeart[1] = ini_read_real ("savedata5", "Heartholder1", global.getHeart[1]);
        global.seal0A = ini_read_real ("savedata5", "MagicSeal0A", global.seal0A);
        global.seal0B = ini_read_real ("savedata5", "MagicSeal0B", global.seal0B);
        global.maxHearts = ini_read_real ("savedata5", "Maxhearts", global.maxHearts);
        global.monkeyLearnt = ini_read_real ("savedata5", "Monkey", global.monkeyLearnt);
        global.elephantLearnt = ini_read_real ("savedata5", "Elephant", global.elephantLearnt);
        global.harpyLearnt = ini_read_real ("savedata5", "Harpy", global.harpyLearnt);
        global.stomp = ini_read_real ("savedata5", "Stomp", global.stomp);
        global.slide = ini_read_real ("savedata5", "Slide", global.slide);
        global.punch = ini_read_real ("savedata5", "Punch", global.punch);
        global.drill = ini_read_real ("savedata5", "Drill", global.drill);
        global.tornado = ini_read_real ("savedata5", "Tornado", global.tornado);
        global.dialogue0 = ini_read_real ("savedata5", "Dialogue 0", global.dialogue0);
        global.dialogue1 = ini_read_real ("savedata5", "Dialogue 1", global.dialogue1);
        global.halfpotions = ini_read_real ("savedata5", "Half Potions", global.halfpotions);
        global.fullpotions = ini_read_real ("savedata5", "Full Potions", global.fullpotions);
        global.autopotions = ini_read_real ("savedata5", "Auto-Potions", global.autopotions);
        global.fleshpops = ini_read_real ("savedata5", "Flesh Pops", global.fleshpops);
        global.monstermilk = ini_read_real ("savedata5", "Monster Milk", global.monstermilk);
        global.super_monstermilk = ini_read_real ("savedata5", "Super Monster Milk", global.super_monstermilk);
        global.pikeballs = ini_read_real ("savedata5", "Pike Balls", global.pikeballs);
        global.superpikeballs = ini_read_real ("savedata5", "Super Pike Balls", global.superpikeballs);
        global.bubbleshields = ini_read_real ("savedata5", "Bubbleshields", global.bubbleshields);
        global.fireballs = ini_read_real ("savedata5", "Fireballs", global.fireballs);
        global.keys = ini_read_real ("savedata5", "Keys", global.keys);
        global.d1door = ini_read_real ("savedata5", "D1D", global.d1door);
        global.mdoor1 = ini_read_real ("savedata5", "M1D", global.mdoor1);
        global.doorpass1 = ini_read_real ("savedata5", "DP1", global.doorpass1);
        global.doorpass2 = ini_read_real ("savedata5", "DP2", global.doorpass2);
        global.doorpass3 = ini_read_real ("savedata5", "DP3", global.doorpass3);
        global.ringItem = ini_read_real ("savedata5", "Ring Item", global.ringItem);
        global.tablet = ini_read_real ("savedata5", "Tablet", global.tablet);
        global.chest1 = ini_read_real ("savedata5", "Chest 1", global.chest1);
        global.chest2 = ini_read_real ("savedata5", "Chest 2", global.chest2);
        global.chest3 = ini_read_real ("savedata5", "Chest 3", global.chest3);
        global.chest4 = ini_read_real ("savedata5", "Chest 4", global.chest4);
        global.chest1L = ini_read_real ("savedata5", "Chest 1L", global.chest1L);
        global.chest2L = ini_read_real ("savedata5", "Chest 2L", global.chest2L);
        global.chest3L = ini_read_real ("savedata5", "Chest 3L", global.chest3L);
        global.chest4L = ini_read_real ("savedata5", "Chest 4L", global.chest4L);
        global.pirategun = ini_read_real ("savedata5", "Pirate Gun", global.pirategun);
        
        ini_close();
    }
    else
    {
        scrInitialize();
        
    }
}
