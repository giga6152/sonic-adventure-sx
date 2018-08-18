///scrSaveM()

//This will save every necessary variable on a respective save file that was selected.

/*Note that the lives will not be saved if it is lower than the default number
(in this case, four lives). In this case it will reset back to the default number of
lives.*/

if !instance_exists (objSaveGuy) audio_stop_all();

global.lastsave_year[global.savedata] = date_get_year (date_current_datetime());
global.lastsave_month[global.savedata] = date_get_month (date_current_datetime());
global.lastsave_day[global.savedata] = date_get_day (date_current_datetime());
global.lastsave_hour[global.savedata] = date_get_hour (date_current_datetime());
global.lastsave_minute[global.savedata] = date_get_minute (date_current_datetime());
global.lastsave_second[global.savedata] = date_get_second (date_current_datetime());

if global.savedata == 1
{
    if file_exists (global.dir+"save.sav")
       file_delete (global.dir+"save.sav");
       
    ini_open (global.dir+"save.sav");
    
    //First, write the game data variables that appear on the save files
    ini_write_real ("savedata", "millisecondsFile", global.millisecondsF[1]);
    ini_write_real ("savedata", "secondsFile", global.secondsF[1]);
    ini_write_real ("savedata", "minutesFile", global.minutesF[1]);
    ini_write_real ("savedata", "hoursFile", global.hoursF[1]);
    ini_write_real ("savedata", "Chaosemerald1", global.ch1[1]);
    ini_write_real ("savedata", "Chaosemerald2", global.ch2[1]);
    ini_write_real ("savedata", "Gems", global.gems[1]);
    ini_write_real ("savedata", "Rings", global.totalrings[1]);
    ini_write_real ("savedata", "MagicSeal0", global.seal0[1]);
    ini_write_real ("savedata", "Gold Medals", global.goldMedals[1]);
    ini_write_real ("savedata", "Blue Medals", global.blueMedals[1]);
    ini_write_real ("savedata", "Clears", global.clears[1]);
    ini_write_real ("savedata", "Last Saved Year", global.lastsave_year[1]);
    ini_write_real ("savedata", "Last Saved Month", global.lastsave_month[1]);
    ini_write_real ("savedata", "Last Saved Day", global.lastsave_day[1]);
    ini_write_real ("savedata", "Last Saved Hour", global.lastsave_hour[1]);
    ini_write_real ("savedata", "Last Saved Minute", global.lastsave_minute[1]);
    ini_write_real ("savedata", "Last Saved Second", global.lastsave_second[1]);
    scrWriteStats1();
    
    if global.life[1] >= 4
        ini_write_real ("savedata", "Lives", global.life[1]);
    else
        global.life[1] = 4;
    
    //Next, write the other game data that dows not appear on the save files
    ini_write_real ("savedata", "sonic_maxstage", global.stage_max[0]);
    ini_write_real ("savedata", "shantae_maxstage", global.stage_max[1]);
    ini_write_real ("savedata", "knux_maxstage", global.stage_max[2]);
    ini_write_real ("savedata", "sky_maxstage", global.stage_max[3]);
    ini_write_real ("savedata", "shadow_maxstage", global.stage_max[4]);
    ini_write_real ("savedata", "bolo_maxstage", global.stage_max[5]);
    ini_write_real ("savedata", "silver_maxstage", global.stage_max[6]);
    ini_write_real ("savedata", "rotty_maxstage", global.stage_max[7]);
    ini_write_real ("savedata", "tails_maxstage", global.stage_max[8]);
    ini_write_real ("savedata", "vinegar_maxstage", global.stage_max[9]);
    ini_write_real ("savedata", "amy_maxstage", global.stage_max[10]);
    ini_write_real ("savedata", "twitch_maxstage", global.stage_max[11]);
    ini_write_real ("savedata", "Heartholder0", global.getHeart[0]);
    ini_write_real ("savedata", "Heartholder1", global.getHeart[1]);
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
    ini_write_real ("savedata", "Flesh Pops", global.fleshpops);
    ini_write_real ("savedata", "Monster Milk", global.monstermilk);
    ini_write_real ("savedata", "Super Monster Milk", global.super_monstermilk);
    ini_write_real ("savedata", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata", "Bubbleshields", global.bubbleshields);
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
    ini_write_real ("savedata", "Pirate Gun", global.pirategun);
    
    ini_close();
}
else if global.savedata == 2
{
    if file_exists (global.dir+"save2.sav")
       file_delete (global.dir+"save2.sav");
       
    ini_open (global.dir+"save2.sav");
    
    //First, write the game data variables that appear on the save files
    ini_write_real ("savedata2", "millisecondsFile", global.millisecondsF[2]);
    ini_write_real ("savedata2", "secondsFile", global.secondsF[2]);
    ini_write_real ("savedata2", "minutesFile", global.minutesF[2]);
    ini_write_real ("savedata2", "hoursFile", global.hoursF[2]);
    ini_write_real ("savedata2", "Chaosemerald1", global.ch1[2]);
    ini_write_real ("savedata2", "Chaosemerald2", global.ch2[2]);
    ini_write_real ("savedata2", "Gems", global.gems[2]);
    ini_write_real ("savedata2", "Rings", global.totalrings[2]);
    ini_write_real ("savedata2", "MagicSeal0", global.seal0[2]);
    ini_write_real ("savedata2", "Gold Medals", global.goldMedals[2]);
    ini_write_real ("savedata2", "Blue Medals", global.blueMedals[2]);
    ini_write_real ("savedata2", "Clears", global.clears[2]);
    ini_write_real ("savedata2", "Last Saved Year", global.lastsave_year[2]);
    ini_write_real ("savedata2", "Last Saved Month", global.lastsave_month[2]);
    ini_write_real ("savedata2", "Last Saved Day", global.lastsave_day[2]);
    ini_write_real ("savedata2", "Last Saved Hour", global.lastsave_hour[2]);
    ini_write_real ("savedata2", "Last Saved Minute", global.lastsave_minute[2]);
    ini_write_real ("savedata2", "Last Saved Second", global.lastsave_second[2]);
    scrWriteStats2();
    
    if global.life[2] >= 4
        ini_write_real ("savedata2", "Lives", global.life[2]);
    else
        global.life[2] = 4;
    
    //Next, write the other game data that dows not appear on the save files
    ini_write_real ("savedata2", "sonic_maxstage", global.stage_max[0]);
    ini_write_real ("savedata2", "shantae_maxstage", global.stage_max[1]);
    ini_write_real ("savedata2", "knux_maxstage", global.stage_max[2]);
    ini_write_real ("savedata2", "sky_maxstage", global.stage_max[3]);
    ini_write_real ("savedata2", "shadow_maxstage", global.stage_max[4]);
    ini_write_real ("savedata2", "bolo_maxstage", global.stage_max[5]);
    ini_write_real ("savedata2", "silver_maxstage", global.stage_max[6]);
    ini_write_real ("savedata2", "rotty_maxstage", global.stage_max[7]);
    ini_write_real ("savedata2", "tails_maxstage", global.stage_max[8]);
    ini_write_real ("savedata2", "vinegar_maxstage", global.stage_max[9]);
    ini_write_real ("savedata2", "amy_maxstage", global.stage_max[10]);
    ini_write_real ("savedata2", "twitch_maxstage", global.stage_max[11]);
    ini_write_real ("savedata2", "Heartholder0", global.getHeart[0]);
    ini_write_real ("savedata2", "Heartholder1", global.getHeart[1]);
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
    ini_write_real ("savedata2", "Flesh Pops", global.fleshpops);
    ini_write_real ("savedata2", "Monster Milk", global.monstermilk);
    ini_write_real ("savedata2", "Super Monster Milk", global.super_monstermilk);
    ini_write_real ("savedata2", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata2", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata2", "Bubbleshields", global.bubbleshields);
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
    ini_write_real ("savedata2", "Pirate Gun", global.pirategun);
    
    ini_close();
}
else if global.savedata == 3
{
    if file_exists (global.dir+"save3.sav")
       file_delete (global.dir+"save3.sav");
       
    ini_open (global.dir+"save3.sav");
    
    //First, write the game data variables that appear on the save files
    ini_write_real ("savedata3", "millisecondsFile", global.millisecondsF[3]);
    ini_write_real ("savedata3", "secondsFile", global.secondsF[3]);
    ini_write_real ("savedata3", "minutesFile", global.minutesF[3]);
    ini_write_real ("savedata3", "hoursFile", global.hoursF[3]);
    ini_write_real ("savedata3", "Chaosemerald1", global.ch1[3]);
    ini_write_real ("savedata3", "Chaosemerald2", global.ch2[3]);
    ini_write_real ("savedata3", "Gems", global.gems[3]);
    ini_write_real ("savedata3", "Rings", global.totalrings[3]);
    ini_write_real ("savedata3", "MagicSeal0", global.seal0[3]);
    ini_write_real ("savedata3", "Gold Medals", global.goldMedals[3]);
    ini_write_real ("savedata3", "Blue Medals", global.blueMedals[3]);
    ini_write_real ("savedata3", "Clears", global.clears[3]);
    ini_write_real ("savedata3", "Last Saved Year", global.lastsave_year[3]);
    ini_write_real ("savedata3", "Last Saved Month", global.lastsave_month[3]);
    ini_write_real ("savedata3", "Last Saved Day", global.lastsave_day[3]);
    ini_write_real ("savedata3", "Last Saved Hour", global.lastsave_hour[3]);
    ini_write_real ("savedata3", "Last Saved Minute", global.lastsave_minute[3]);
    ini_write_real ("savedata3", "Last Saved Second", global.lastsave_second[3]);
    scrWriteStats3();
    
    if global.life[3] >= 4
        ini_write_real ("savedata3", "Lives", global.life[3]);
    else
        global.life[3] = 4;
    
    //Next, write the other game data that dows not appear on the save files
    ini_write_real ("savedata3", "sonic_maxstage", global.stage_max[0]);
    ini_write_real ("savedata3", "shantae_maxstage", global.stage_max[1]);
    ini_write_real ("savedata3", "knux_maxstage", global.stage_max[2]);
    ini_write_real ("savedata3", "sky_maxstage", global.stage_max[3]);
    ini_write_real ("savedata3", "shadow_maxstage", global.stage_max[4]);
    ini_write_real ("savedata3", "bolo_maxstage", global.stage_max[5]);
    ini_write_real ("savedata3", "silver_maxstage", global.stage_max[6]);
    ini_write_real ("savedata3", "rotty_maxstage", global.stage_max[7]);
    ini_write_real ("savedata3", "tails_maxstage", global.stage_max[8]);
    ini_write_real ("savedata3", "vinegar_maxstage", global.stage_max[9]);
    ini_write_real ("savedata3", "amy_maxstage", global.stage_max[10]);
    ini_write_real ("savedata3", "twitch_maxstage", global.stage_max[11]);
    ini_write_real ("savedata3", "Heartholder0", global.getHeart[0]);
    ini_write_real ("savedata3", "Heartholder1", global.getHeart[1]);
    ini_write_real ("savedata3", "MagicSeal0A", global.seal0A);
    ini_write_real ("savedata3", "MagicSeal0B", global.seal0B);
    ini_write_real ("savedata3", "Maxhearts", global.maxHearts);
    ini_write_real ("savedata3", "Monkey", global.monkeyLearnt);
    ini_write_real ("savedata3", "Elephant", global.elephantLearnt);
    ini_write_real ("savedata3", "Harpy", global.harpyLearnt);
    ini_write_real ("savedata3", "Stomp", global.stomp);
    ini_write_real ("savedata3", "Slide", global.slide);
    ini_write_real ("savedata3", "Punch", global.punch);
    ini_write_real ("savedata3", "Drill", global.drill);
    ini_write_real ("savedata3", "Tornado", global.tornado);
    ini_write_real ("savedata3", "Dialogue 0", global.dialogue0);
    ini_write_real ("savedata3", "Dialogue 1", global.dialogue1);
    ini_write_real ("savedata3", "Half Potions", global.halfpotions);
    ini_write_real ("savedata3", "Full Potions", global.fullpotions);
    ini_write_real ("savedata3", "Auto-Potions", global.autopotions);
    ini_write_real ("savedata3", "Flesh Pops", global.fleshpops);
    ini_write_real ("savedata3", "Monster Milk", global.monstermilk);
    ini_write_real ("savedata3", "Super Monster Milk", global.super_monstermilk);
    ini_write_real ("savedata3", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata3", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata3", "Bubbleshields", global.bubbleshields);
    ini_write_real ("savedata3", "Fireballs", global.fireballs);
    ini_write_real ("savedata3", "Keys", global.keys);
    ini_write_real ("savedata3", "D1D", global.d1door);
    ini_write_real ("savedata3", "M1D", global.mdoor1);
    ini_write_real ("savedata3", "DP1", global.doorpass1);
    ini_write_real ("savedata3", "DP2", global.doorpass2);
    ini_write_real ("savedata3", "DP3", global.doorpass3);
    ini_write_real ("savedata3", "Ring Item", global.ringItem);
    ini_write_real ("savedata3", "Tablet", global.tablet);
    ini_write_real ("savedata3", "Chest 1", global.chest1);
    ini_write_real ("savedata3", "Chest 2", global.chest2);
    ini_write_real ("savedata3", "Chest 3", global.chest3);
    ini_write_real ("savedata3", "Chest 4", global.chest4);
    ini_write_real ("savedata3", "Chest 1L", global.chest1L);
    ini_write_real ("savedata3", "Chest 2L", global.chest2L);
    ini_write_real ("savedata3", "Chest 3L", global.chest3L);
    ini_write_real ("savedata3", "Chest 4L", global.chest4L);
    ini_write_real ("savedata3", "Pirate Gun", global.pirategun);
    
    ini_close();
}
else if global.savedata == 4
{
    if file_exists (global.dir+"save4.sav")
       file_delete (global.dir+"save4.sav");
       
    ini_open (global.dir+"save4.sav");
    
    //First, write the game data variables that appear on the save files
    ini_write_real ("savedata4", "millisecondsFile", global.millisecondsF[4]);
    ini_write_real ("savedata4", "secondsFile", global.secondsF[4]);
    ini_write_real ("savedata4", "minutesFile", global.minutesF[4]);
    ini_write_real ("savedata4", "hoursFile", global.hoursF[4]);
    ini_write_real ("savedata4", "Chaosemerald1", global.ch1[4]);
    ini_write_real ("savedata4", "Chaosemerald2", global.ch2[4]);
    ini_write_real ("savedata4", "Gems", global.gems[4]);
    ini_write_real ("savedata4", "Rings", global.totalrings[4]);
    ini_write_real ("savedata4", "MagicSeal0", global.seal0[4]);
    ini_write_real ("savedata4", "Gold Medals", global.goldMedals[4]);
    ini_write_real ("savedata4", "Blue Medals", global.blueMedals[4]);
    ini_write_real ("savedata4", "Clears", global.clears[4]);
    ini_write_real ("savedata4", "Last Saved Year", global.lastsave_year[4]);
    ini_write_real ("savedata4", "Last Saved Month", global.lastsave_month[4]);
    ini_write_real ("savedata4", "Last Saved Day", global.lastsave_day[4]);
    ini_write_real ("savedata4", "Last Saved Hour", global.lastsave_hour[4]);
    ini_write_real ("savedata4", "Last Saved Minute", global.lastsave_minute[4]);
    ini_write_real ("savedata4", "Last Saved Second", global.lastsave_second[4]);
    scrWriteStats4();
    
    if global.life[4] >= 4
        ini_write_real ("savedata4", "Lives", global.life[4]);
    else
        global.life[4] = 4;
    
    //Next, write the other game data that dows not appear on the save files
    ini_write_real ("savedata4", "sonic_maxstage", global.stage_max[0]);
    ini_write_real ("savedata4", "shantae_maxstage", global.stage_max[1]);
    ini_write_real ("savedata4", "knux_maxstage", global.stage_max[2]);
    ini_write_real ("savedata4", "sky_maxstage", global.stage_max[3]);
    ini_write_real ("savedata4", "shadow_maxstage", global.stage_max[4]);
    ini_write_real ("savedata4", "bolo_maxstage", global.stage_max[5]);
    ini_write_real ("savedata4", "silver_maxstage", global.stage_max[6]);
    ini_write_real ("savedata4", "rotty_maxstage", global.stage_max[7]);
    ini_write_real ("savedata4", "tails_maxstage", global.stage_max[8]);
    ini_write_real ("savedata4", "vinegar_maxstage", global.stage_max[9]);
    ini_write_real ("savedata4", "amy_maxstage", global.stage_max[10]);
    ini_write_real ("savedata4", "twitch_maxstage", global.stage_max[11]);
    ini_write_real ("savedata4", "Heartholder0", global.getHeart[0]);
    ini_write_real ("savedata4", "Heartholder1", global.getHeart[1]);
    ini_write_real ("savedata4", "MagicSeal0A", global.seal0A);
    ini_write_real ("savedata4", "MagicSeal0B", global.seal0B);
    ini_write_real ("savedata4", "Maxhearts", global.maxHearts);
    ini_write_real ("savedata4", "Monkey", global.monkeyLearnt);
    ini_write_real ("savedata4", "Elephant", global.elephantLearnt);
    ini_write_real ("savedata4", "Harpy", global.harpyLearnt);
    ini_write_real ("savedata4", "Stomp", global.stomp);
    ini_write_real ("savedata4", "Slide", global.slide);
    ini_write_real ("savedata4", "Punch", global.punch);
    ini_write_real ("savedata4", "Drill", global.drill);
    ini_write_real ("savedata4", "Tornado", global.tornado);
    ini_write_real ("savedata4", "Dialogue 0", global.dialogue0);
    ini_write_real ("savedata4", "Dialogue 1", global.dialogue1);
    ini_write_real ("savedata4", "Half Potions", global.halfpotions);
    ini_write_real ("savedata4", "Full Potions", global.fullpotions);
    ini_write_real ("savedata4", "Auto-Potions", global.autopotions);
    ini_write_real ("savedata4", "Flesh Pops", global.fleshpops);
    ini_write_real ("savedata4", "Monster Milk", global.monstermilk);
    ini_write_real ("savedata4", "Super Monster Milk", global.super_monstermilk);
    ini_write_real ("savedata4", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata4", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata4", "Bubbleshields", global.bubbleshields);
    ini_write_real ("savedata4", "Fireballs", global.fireballs);
    ini_write_real ("savedata4", "Keys", global.keys);
    ini_write_real ("savedata4", "D1D", global.d1door);
    ini_write_real ("savedata4", "M1D", global.mdoor1);
    ini_write_real ("savedata4", "DP1", global.doorpass1);
    ini_write_real ("savedata4", "DP2", global.doorpass2);
    ini_write_real ("savedata4", "DP3", global.doorpass3);
    ini_write_real ("savedata4", "Ring Item", global.ringItem);
    ini_write_real ("savedata4", "Tablet", global.tablet);
    ini_write_real ("savedata4", "Chest 1", global.chest1);
    ini_write_real ("savedata4", "Chest 2", global.chest2);
    ini_write_real ("savedata4", "Chest 3", global.chest3);
    ini_write_real ("savedata4", "Chest 4", global.chest4);
    ini_write_real ("savedata4", "Chest 1L", global.chest1L);
    ini_write_real ("savedata4", "Chest 2L", global.chest2L);
    ini_write_real ("savedata4", "Chest 3L", global.chest3L);
    ini_write_real ("savedata4", "Chest 4L", global.chest4L);
    ini_write_real ("savedata4", "Pirate Gun", global.pirategun);
    
    ini_close();
}
else if global.savedata == 5
{
    if file_exists (global.dir+"save5.sav")
       file_delete (global.dir+"save5.sav");
       
    ini_open (global.dir+"save5.sav");
    
    //First, write the game data variables that appear on the save files
    ini_write_real ("savedata5", "millisecondsFile", global.millisecondsF[5]);
    ini_write_real ("savedata5", "secondsFile", global.secondsF[5]);
    ini_write_real ("savedata5", "minutesFile", global.minutesF[5]);
    ini_write_real ("savedata5", "hoursFile", global.hoursF[5]);
    ini_write_real ("savedata5", "Chaosemerald1", global.ch1[5]);
    ini_write_real ("savedata5", "Chaosemerald2", global.ch2[5]);
    ini_write_real ("savedata5", "Gems", global.gems[5]);
    ini_write_real ("savedata5", "Rings", global.totalrings[5]);
    ini_write_real ("savedata5", "MagicSeal0", global.seal0[5]);
    ini_write_real ("savedata5", "Gold Medals", global.goldMedals[5]);
    ini_write_real ("savedata5", "Blue Medals", global.blueMedals[5]);
    ini_write_real ("savedata5", "Clears", global.clears[5]);
    ini_write_real ("savedata5", "Last Saved Year", global.lastsave_year[5]);
    ini_write_real ("savedata5", "Last Saved Month", global.lastsave_month[5]);
    ini_write_real ("savedata5", "Last Saved Day", global.lastsave_day[5]);
    ini_write_real ("savedata5", "Last Saved Hour", global.lastsave_hour[5]);
    ini_write_real ("savedata5", "Last Saved Minute", global.lastsave_minute[5]);
    ini_write_real ("savedata5", "Last Saved Second", global.lastsave_second[5]);
    scrWriteStats5();
    
    if global.life[5] >= 4
        ini_write_real ("savedata5", "Lives", global.life[5]);
    else
        global.life[5] = 4;
    
    //Next, write the other game data that dows not appear on the save files
    ini_write_real ("savedata5", "sonic_maxstage", global.stage_max[0]);
    ini_write_real ("savedata5", "shantae_maxstage", global.stage_max[1]);
    ini_write_real ("savedata5", "knux_maxstage", global.stage_max[2]);
    ini_write_real ("savedata5", "sky_maxstage", global.stage_max[3]);
    ini_write_real ("savedata5", "shadow_maxstage", global.stage_max[4]);
    ini_write_real ("savedata5", "bolo_maxstage", global.stage_max[5]);
    ini_write_real ("savedata5", "silver_maxstage", global.stage_max[6]);
    ini_write_real ("savedata5", "rotty_maxstage", global.stage_max[7]);
    ini_write_real ("savedata5", "tails_maxstage", global.stage_max[8]);
    ini_write_real ("savedata5", "vinegar_maxstage", global.stage_max[9]);
    ini_write_real ("savedata5", "amy_maxstage", global.stage_max[10]);
    ini_write_real ("savedata5", "twitch_maxstage", global.stage_max[11]);
    ini_write_real ("savedata5", "Heartholder0", global.getHeart[0]);
    ini_write_real ("savedata5", "Heartholder1", global.getHeart[1]);
    ini_write_real ("savedata5", "MagicSeal0A", global.seal0A);
    ini_write_real ("savedata5", "MagicSeal0B", global.seal0B);
    ini_write_real ("savedata5", "Maxhearts", global.maxHearts);
    ini_write_real ("savedata5", "Monkey", global.monkeyLearnt);
    ini_write_real ("savedata5", "Elephant", global.elephantLearnt);
    ini_write_real ("savedata5", "Harpy", global.harpyLearnt);
    ini_write_real ("savedata5", "Stomp", global.stomp);
    ini_write_real ("savedata5", "Slide", global.slide);
    ini_write_real ("savedata5", "Punch", global.punch);
    ini_write_real ("savedata5", "Drill", global.drill);
    ini_write_real ("savedata5", "Tornado", global.tornado);
    ini_write_real ("savedata5", "Dialogue 0", global.dialogue0);
    ini_write_real ("savedata5", "Dialogue 1", global.dialogue1);
    ini_write_real ("savedata5", "Half Potions", global.halfpotions);
    ini_write_real ("savedata5", "Full Potions", global.fullpotions);
    ini_write_real ("savedata5", "Auto-Potions", global.autopotions);
    ini_write_real ("savedata5", "Flesh Pops", global.fleshpops);
    ini_write_real ("savedata5", "Monster Milk", global.monstermilk);
    ini_write_real ("savedata5", "Super Monster Milk", global.super_monstermilk);
    ini_write_real ("savedata5", "Pike Balls", global.pikeballs);
    ini_write_real ("savedata5", "Super Pike Balls", global.superpikeballs);
    ini_write_real ("savedata5", "Bubbleshields", global.bubbleshields);
    ini_write_real ("savedata5", "Fireballs", global.fireballs);
    ini_write_real ("savedata5", "Keys", global.keys);
    ini_write_real ("savedata5", "D1D", global.d1door);
    ini_write_real ("savedata5", "M1D", global.mdoor1);
    ini_write_real ("savedata5", "DP1", global.doorpass1);
    ini_write_real ("savedata5", "DP2", global.doorpass2);
    ini_write_real ("savedata5", "DP3", global.doorpass3);
    ini_write_real ("savedata5", "Ring Item", global.ringItem);
    ini_write_real ("savedata5", "Tablet", global.tablet);
    ini_write_real ("savedata5", "Chest 1", global.chest1);
    ini_write_real ("savedata5", "Chest 2", global.chest2);
    ini_write_real ("savedata5", "Chest 3", global.chest3);
    ini_write_real ("savedata5", "Chest 4", global.chest4);
    ini_write_real ("savedata5", "Chest 1L", global.chest1L);
    ini_write_real ("savedata5", "Chest 2L", global.chest2L);
    ini_write_real ("savedata5", "Chest 3L", global.chest3L);
    ini_write_real ("savedata5", "Chest 4L", global.chest4L);
    ini_write_real ("savedata5", "Pirate Gun", global.pirategun);
    
    ini_close();
}
