#define scrLoadStats
///scrLoadStats(data)

if file_exists (global.dir+"stats.sav") scrReadStats1();
if file_exists (global.dir+"stats2.sav") scrReadStats2();
if file_exists (global.dir+"stats3.sav") scrReadStats3();
if file_exists (global.dir+"stats4.sav") scrReadStats4();
if file_exists (global.dir+"stats5.sav") scrReadStats5();

#define scrReadStats1
///scrReadStats1()

//ini_open("save.sav");

//Read best times
global.best_time[0, 0] = ini_read_real ("savedata", "Best Time[0-0]", global.best_time[0, 0]);
global.best_time[0, 1] = ini_read_real ("savedata", "Best Time[0-1]", global.best_time[0, 1]);
global.best_time[1, 0] = ini_read_real ("savedata", "Best Time[1-0]", global.best_time[1, 0]);
global.best_time[1, 1] = ini_read_real ("savedata", "Best Time[1-1]", global.best_time[1, 1]);
global.best_time[2, 0] = ini_read_real ("savedata", "Best Time[2-0]", global.best_time[2, 0]);
global.best_time[2, 1] = ini_read_real ("savedata", "Best Time[2-1]", global.best_time[2, 1]);
//global.best_time[3, 0] = ini_read_real ("savedata", "Best Time[3-0]", global.best_time[3, 0]);
//global.best_time[3, 1] = ini_read_real ("savedata", "Best Time[3-1]", global.best_time[3, 1]);
global.best_time[4, 0] = ini_read_real ("savedata", "Best Time[4-0]", global.best_time[4, 0]);
global.best_time[4, 1] = ini_read_real ("savedata", "Best Time[4-1]", global.best_time[4, 1]);
//global.best_time[5, 0] = ini_read_real ("savedata", "Best Time[5-0]", global.best_time[5, 0]);
//global.best_time[5, 1] = ini_read_real ("savedata", "Best Time[5-1]", global.best_time[5, 1]);
global.best_time[6, 0] = ini_read_real ("savedata", "Best Time[6-0]", global.best_time[6, 0]);
global.best_time[6, 1] = ini_read_real ("savedata", "Best Time[6-1]", global.best_time[6, 1]);
global.best_time[7, 0] = ini_read_real ("savedata", "Best Time[7-0]", global.best_time[7, 0]);
global.best_time[7, 1] = ini_read_real ("savedata", "Best Time[7-1]", global.best_time[7, 1]);
global.best_time[8, 0] = ini_read_real ("savedata", "Best Time[8-0]", global.best_time[8, 0]);
//global.best_time[9, 0] = ini_read_real ("savedata", "Best Time[9-0]", global.best_time[9, 0]);
global.best_time[10, 0] = ini_read_real ("savedata", "Best Time[10-0]", global.best_time[10, 0]);
//global.best_time[11, 0] = ini_read_real ("savedata", "Best Time[11-0]", global.best_time[11, 0]);

//Read best scores
global.best_score[0, 0] = ini_read_real ("savedata", "Best Score[0-0]", global.best_score[0, 0]);
global.best_score[0, 1] = ini_read_real ("savedata", "Best Score[0-1]", global.best_score[0, 1]);
global.best_score[2, 0] = ini_read_real ("savedata", "Best Score[2-0]", global.best_score[2, 0]);
global.best_score[2, 1] = ini_read_real ("savedata", "Best Score[2-1]", global.best_score[2, 1]);
global.best_score[4, 0] = ini_read_real ("savedata", "Best Score[4-0]", global.best_score[4, 0]);
global.best_score[4, 1] = ini_read_real ("savedata", "Best Score[4-1]", global.best_score[4, 1]);
global.best_score[6, 0] = ini_read_real ("savedata", "Best Score[6-0]", global.best_score[6, 0]);
global.best_score[6, 1] = ini_read_real ("savedata", "Best Score[6-1]", global.best_score[6, 1]);
global.best_score[8, 0] = ini_read_real ("savedata", "Best Score[8-0]", global.best_score[8, 0]);
global.best_score[10, 0] = ini_read_real ("savedata", "Best Score[10-0]", global.best_score[10, 0]);

//Read best rings
global.best_rings[0, 0] = ini_read_real ("savedata", "Best Rings[0-0]", global.best_rings[0, 0]);
global.best_rings[0, 1] = ini_read_real ("savedata", "Best Rings[0-1]", global.best_rings[0, 1]);
global.best_rings[2, 0] = ini_read_real ("savedata", "Best Rings[2-0]", global.best_rings[2, 0]);
global.best_rings[2, 1] = ini_read_real ("savedata", "Best Rings[2-1]", global.best_rings[2, 1]);
global.best_rings[4, 0] = ini_read_real ("savedata", "Best Rings[4-0]", global.best_rings[4, 0]);
global.best_rings[4, 1] = ini_read_real ("savedata", "Best Rings[4-1]", global.best_rings[4, 1]);
global.best_rings[6, 0] = ini_read_real ("savedata", "Best Rings[6-0]", global.best_rings[6, 0]);
global.best_rings[6, 1] = ini_read_real ("savedata", "Best Rings[6-1]", global.best_rings[6, 1]);
global.best_rings[8, 0] = ini_read_real ("savedata", "Best Rings[8-0]", global.best_rings[8, 0]);
global.best_rings[10, 0] = ini_read_real ("savedata", "Best Rings[10-0]", global.best_rings[10, 0]);

//ini_close();

#define scrReadStats2
///scrReadStats2()

//ini_open("save2.sav");

//Read best times
global.best_time[0, 0] = ini_read_real ("savedata2", "Best Time[0-0]", global.best_time[0, 0]);
global.best_time[0, 1] = ini_read_real ("savedata2", "Best Time[0-1]", global.best_time[0, 1]);
global.best_time[1, 0] = ini_read_real ("savedata2", "Best Time[1-0]", global.best_time[1, 0]);
global.best_time[1, 1] = ini_read_real ("savedata2", "Best Time[1-1]", global.best_time[1, 1]);
global.best_time[2, 0] = ini_read_real ("savedata2", "Best Time[2-0]", global.best_time[2, 0]);
global.best_time[2, 1] = ini_read_real ("savedata2", "Best Time[2-1]", global.best_time[2, 1]);
//global.best_time[3, 0] = ini_read_real ("savedata2", "Best Time[3-0]", global.best_time[3, 0]);
//global.best_time[3, 1] = ini_read_real ("savedata2", "Best Time[3-1]", global.best_time[3, 1]);
global.best_time[4, 0] = ini_read_real ("savedata2", "Best Time[4-0]", global.best_time[4, 0]);
global.best_time[4, 1] = ini_read_real ("savedata2", "Best Time[4-1]", global.best_time[4, 1]);
//global.best_time[5, 0] = ini_read_real ("savedata2", "Best Time[5-0]", global.best_time[5, 0]);
//global.best_time[5, 1] = ini_read_real ("savedata2", "Best Time[5-1]", global.best_time[5, 1]);
global.best_time[6, 0] = ini_read_real ("savedata2", "Best Time[6-0]", global.best_time[6, 0]);
global.best_time[6, 1] = ini_read_real ("savedata2", "Best Time[6-1]", global.best_time[6, 1]);
global.best_time[7, 0] = ini_read_real ("savedata2", "Best Time[7-0]", global.best_time[7, 0]);
global.best_time[7, 1] = ini_read_real ("savedata2", "Best Time[7-1]", global.best_time[7, 1]);
global.best_time[8, 0] = ini_read_real ("savedata2", "Best Time[8-0]", global.best_time[8, 0]);
//global.best_time[9, 0] = ini_read_real ("savedata2", "Best Time[9-0]", global.best_time[9, 0]);
global.best_time[10, 0] = ini_read_real ("savedata2", "Best Time[10-0]", global.best_time[10, 0]);
//global.best_time[11, 0] = ini_read_real ("savedata2", "Best Time[11-0]", global.best_time[11, 0]);

//Read best scores
global.best_score[0, 0] = ini_read_real ("savedata2", "Best Score[0-0]", global.best_score[0, 0]);
global.best_score[0, 1] = ini_read_real ("savedata2", "Best Score[0-1]", global.best_score[0, 1]);
global.best_score[2, 0] = ini_read_real ("savedata2", "Best Score[2-0]", global.best_score[2, 0]);
global.best_score[2, 1] = ini_read_real ("savedata2", "Best Score[2-1]", global.best_score[2, 1]);
global.best_score[4, 0] = ini_read_real ("savedata2", "Best Score[4-0]", global.best_score[4, 0]);
global.best_score[4, 1] = ini_read_real ("savedata2", "Best Score[4-1]", global.best_score[4, 1]);
global.best_score[6, 0] = ini_read_real ("savedata2", "Best Score[6-0]", global.best_score[6, 0]);
global.best_score[6, 1] = ini_read_real ("savedata2", "Best Score[6-1]", global.best_score[6, 1]);
global.best_score[8, 0] = ini_read_real ("savedata2", "Best Score[8-0]", global.best_score[8, 0]);
global.best_score[10, 0] = ini_read_real ("savedata2", "Best Score[10-0]", global.best_score[10, 0]);

//Read best rings
global.best_rings[0, 0] = ini_read_real ("savedata2", "Best Rings[0-0]", global.best_rings[0, 0]);
global.best_rings[0, 1] = ini_read_real ("savedata2", "Best Rings[0-1]", global.best_rings[0, 1]);
global.best_rings[2, 0] = ini_read_real ("savedata2", "Best Rings[2-0]", global.best_rings[2, 0]);
global.best_rings[2, 1] = ini_read_real ("savedata2", "Best Rings[2-1]", global.best_rings[2, 1]);
global.best_rings[4, 0] = ini_read_real ("savedata2", "Best Rings[4-0]", global.best_rings[4, 0]);
global.best_rings[4, 1] = ini_read_real ("savedata2", "Best Rings[4-1]", global.best_rings[4, 1]);
global.best_rings[6, 0] = ini_read_real ("savedata2", "Best Rings[6-0]", global.best_rings[6, 0]);
global.best_rings[6, 1] = ini_read_real ("savedata2", "Best Rings[6-1]", global.best_rings[6, 1]);
global.best_rings[8, 0] = ini_read_real ("savedata2", "Best Rings[8-0]", global.best_rings[8, 0]);
global.best_rings[10, 0] = ini_read_real ("savedata2", "Best Rings[10-0]", global.best_rings[10, 0]);

//ini_close();

#define scrReadStats3
///scrReadStats3()

//ini_open("save3.sav");

//Read best times
global.best_time[0, 0] = ini_read_real ("savedata3", "Best Time[0-0]", global.best_time[0, 0]);
global.best_time[0, 1] = ini_read_real ("savedata3", "Best Time[0-1]", global.best_time[0, 1]);
global.best_time[1, 0] = ini_read_real ("savedata3", "Best Time[1-0]", global.best_time[1, 0]);
global.best_time[1, 1] = ini_read_real ("savedata3", "Best Time[1-1]", global.best_time[1, 1]);
global.best_time[2, 0] = ini_read_real ("savedata3", "Best Time[2-0]", global.best_time[2, 0]);
global.best_time[2, 1] = ini_read_real ("savedata3", "Best Time[2-1]", global.best_time[2, 1]);
//global.best_time[3, 0] = ini_read_real ("savedata3", "Best Time[3-0]", global.best_time[3, 0]);
//global.best_time[3, 1] = ini_read_real ("savedata3", "Best Time[3-1]", global.best_time[3, 1]);
global.best_time[4, 0] = ini_read_real ("savedata3", "Best Time[4-0]", global.best_time[4, 0]);
global.best_time[4, 1] = ini_read_real ("savedata3", "Best Time[4-1]", global.best_time[4, 1]);
//global.best_time[5, 0] = ini_read_real ("savedata3", "Best Time[5-0]", global.best_time[5, 0]);
//global.best_time[5, 1] = ini_read_real ("savedata3", "Best Time[5-1]", global.best_time[5, 1]);
global.best_time[6, 0] = ini_read_real ("savedata3", "Best Time[6-0]", global.best_time[6, 0]);
global.best_time[6, 1] = ini_read_real ("savedata3", "Best Time[6-1]", global.best_time[6, 1]);
global.best_time[7, 0] = ini_read_real ("savedata3", "Best Time[7-0]", global.best_time[7, 0]);
global.best_time[7, 1] = ini_read_real ("savedata3", "Best Time[7-1]", global.best_time[7, 1]);
global.best_time[8, 0] = ini_read_real ("savedata3", "Best Time[8-0]", global.best_time[8, 0]);
//global.best_time[9, 0] = ini_read_real ("savedata3", "Best Time[9-0]", global.best_time[9, 0]);
global.best_time[10, 0] = ini_read_real ("savedata3", "Best Time[10-0]", global.best_time[10, 0]);
//global.best_time[11, 0] = ini_read_real ("savedata3", "Best Time[11-0]", global.best_time[11, 0]);

//Read best scores
global.best_score[0, 0] = ini_read_real ("savedata3", "Best Score[0-0]", global.best_score[0, 0]);
global.best_score[0, 1] = ini_read_real ("savedata3", "Best Score[0-1]", global.best_score[0, 1]);
global.best_score[2, 0] = ini_read_real ("savedata3", "Best Score[2-0]", global.best_score[2, 0]);
global.best_score[2, 1] = ini_read_real ("savedata3", "Best Score[2-1]", global.best_score[2, 1]);
global.best_score[4, 0] = ini_read_real ("savedata3", "Best Score[4-0]", global.best_score[4, 0]);
global.best_score[4, 1] = ini_read_real ("savedata3", "Best Score[4-1]", global.best_score[4, 1]);
global.best_score[6, 0] = ini_read_real ("savedata3", "Best Score[6-0]", global.best_score[6, 0]);
global.best_score[6, 1] = ini_read_real ("savedata3", "Best Score[6-1]", global.best_score[6, 1]);
global.best_score[8, 0] = ini_read_real ("savedata3", "Best Score[8-0]", global.best_score[8, 0]);
global.best_score[10, 0] = ini_read_real ("savedata3", "Best Score[10-0]", global.best_score[10, 0]);

//Read best rings
global.best_rings[0, 0] = ini_read_real ("savedata3", "Best Rings[0-0]", global.best_rings[0, 0]);
global.best_rings[0, 1] = ini_read_real ("savedata3", "Best Rings[0-1]", global.best_rings[0, 1]);
global.best_rings[2, 0] = ini_read_real ("savedata3", "Best Rings[2-0]", global.best_rings[2, 0]);
global.best_rings[2, 1] = ini_read_real ("savedata3", "Best Rings[2-1]", global.best_rings[2, 1]);
global.best_rings[4, 0] = ini_read_real ("savedata3", "Best Rings[4-0]", global.best_rings[4, 0]);
global.best_rings[4, 1] = ini_read_real ("savedata3", "Best Rings[4-1]", global.best_rings[4, 1]);
global.best_rings[6, 0] = ini_read_real ("savedata3", "Best Rings[6-0]", global.best_rings[6, 0]);
global.best_rings[6, 1] = ini_read_real ("savedata3", "Best Rings[6-1]", global.best_rings[6, 1]);
global.best_rings[8, 0] = ini_read_real ("savedata3", "Best Rings[8-0]", global.best_rings[8, 0]);
global.best_rings[10, 0] = ini_read_real ("savedata3", "Best Rings[10-0]", global.best_rings[10, 0]);

//ini_close();

#define scrReadStats4
///scrReadStats4()

//ini_open("save4.sav");

//Read best times
global.best_time[0, 0] = ini_read_real ("savedata4", "Best Time[0-0]", global.best_time[0, 0]);
global.best_time[0, 1] = ini_read_real ("savedata4", "Best Time[0-1]", global.best_time[0, 1]);
global.best_time[1, 0] = ini_read_real ("savedata4", "Best Time[1-0]", global.best_time[1, 0]);
global.best_time[1, 1] = ini_read_real ("savedata4", "Best Time[1-1]", global.best_time[1, 1]);
global.best_time[2, 0] = ini_read_real ("savedata4", "Best Time[2-0]", global.best_time[2, 0]);
global.best_time[2, 1] = ini_read_real ("savedata4", "Best Time[2-1]", global.best_time[2, 1]);
//global.best_time[3, 0] = ini_read_real ("savedata4", "Best Time[3-0]", global.best_time[3, 0]);
//global.best_time[3, 1] = ini_read_real ("savedata4", "Best Time[3-1]", global.best_time[3, 1]);
global.best_time[4, 0] = ini_read_real ("savedata4", "Best Time[4-0]", global.best_time[4, 0]);
global.best_time[4, 1] = ini_read_real ("savedata4", "Best Time[4-1]", global.best_time[4, 1]);
//global.best_time[5, 0] = ini_read_real ("savedata4", "Best Time[5-0]", global.best_time[5, 0]);
//global.best_time[5, 1] = ini_read_real ("savedata4", "Best Time[5-1]", global.best_time[5, 1]);
global.best_time[6, 0] = ini_read_real ("savedata4", "Best Time[6-0]", global.best_time[6, 0]);
global.best_time[6, 1] = ini_read_real ("savedata4", "Best Time[6-1]", global.best_time[6, 1]);
global.best_time[7, 0] = ini_read_real ("savedata4", "Best Time[7-0]", global.best_time[7, 0]);
global.best_time[7, 1] = ini_read_real ("savedata4", "Best Time[7-1]", global.best_time[7, 1]);
global.best_time[8, 0] = ini_read_real ("savedata4", "Best Time[8-0]", global.best_time[8, 0]);
//global.best_time[9, 0] = ini_read_real ("savedata4", "Best Time[9-0]", global.best_time[9, 0]);
global.best_time[10, 0] = ini_read_real ("savedata4", "Best Time[10-0]", global.best_time[10, 0]);
//global.best_time[11, 0] = ini_read_real ("savedata4", "Best Time[11-0]", global.best_time[11, 0]);

//Read best scores
global.best_score[0, 0] = ini_read_real ("savedata4", "Best Score[0-0]", global.best_score[0, 0]);
global.best_score[0, 1] = ini_read_real ("savedata4", "Best Score[0-1]", global.best_score[0, 1]);
global.best_score[2, 0] = ini_read_real ("savedata4", "Best Score[2-0]", global.best_score[2, 0]);
global.best_score[2, 1] = ini_read_real ("savedata4", "Best Score[2-1]", global.best_score[2, 1]);
global.best_score[4, 0] = ini_read_real ("savedata4", "Best Score[4-0]", global.best_score[4, 0]);
global.best_score[4, 1] = ini_read_real ("savedata4", "Best Score[4-1]", global.best_score[4, 1]);
global.best_score[6, 0] = ini_read_real ("savedata4", "Best Score[6-0]", global.best_score[6, 0]);
global.best_score[6, 1] = ini_read_real ("savedata4", "Best Score[6-1]", global.best_score[6, 1]);
global.best_score[8, 0] = ini_read_real ("savedata4", "Best Score[8-0]", global.best_score[8, 0]);
global.best_score[10, 0] = ini_read_real ("savedata4", "Best Score[10-0]", global.best_score[10, 0]);

//Read best rings
global.best_rings[0, 0] = ini_read_real ("savedata4", "Best Rings[0-0]", global.best_rings[0, 0]);
global.best_rings[0, 1] = ini_read_real ("savedata4", "Best Rings[0-1]", global.best_rings[0, 1]);
global.best_rings[2, 0] = ini_read_real ("savedata4", "Best Rings[2-0]", global.best_rings[2, 0]);
global.best_rings[2, 1] = ini_read_real ("savedata4", "Best Rings[2-1]", global.best_rings[2, 1]);
global.best_rings[4, 0] = ini_read_real ("savedata4", "Best Rings[4-0]", global.best_rings[4, 0]);
global.best_rings[4, 1] = ini_read_real ("savedata4", "Best Rings[4-1]", global.best_rings[4, 1]);
global.best_rings[6, 0] = ini_read_real ("savedata4", "Best Rings[6-0]", global.best_rings[6, 0]);
global.best_rings[6, 1] = ini_read_real ("savedata4", "Best Rings[6-1]", global.best_rings[6, 1]);
global.best_rings[8, 0] = ini_read_real ("savedata4", "Best Rings[8-0]", global.best_rings[8, 0]);
global.best_rings[10, 0] = ini_read_real ("savedata4", "Best Rings[10-0]", global.best_rings[10, 0]);

//ini_close();

#define scrReadStats5
///scrReadStats5()

//ini_open("save5.sav");

//Read best times
global.best_time[0, 0] = ini_read_real ("savedata5", "Best Time[0-0]", global.best_time[0, 0]);
global.best_time[0, 1] = ini_read_real ("savedata5", "Best Time[0-1]", global.best_time[0, 1]);
global.best_time[1, 0] = ini_read_real ("savedata5", "Best Time[1-0]", global.best_time[1, 0]);
global.best_time[1, 1] = ini_read_real ("savedata5", "Best Time[1-1]", global.best_time[1, 1]);
global.best_time[2, 0] = ini_read_real ("savedata5", "Best Time[2-0]", global.best_time[2, 0]);
global.best_time[2, 1] = ini_read_real ("savedata5", "Best Time[2-1]", global.best_time[2, 1]);
//global.best_time[3, 0] = ini_read_real ("savedata5", "Best Time[3-0]", global.best_time[3, 0]);
//global.best_time[3, 1] = ini_read_real ("savedata5", "Best Time[3-1]", global.best_time[3, 1]);
global.best_time[4, 0] = ini_read_real ("savedata5", "Best Time[4-0]", global.best_time[4, 0]);
global.best_time[4, 1] = ini_read_real ("savedata5", "Best Time[4-1]", global.best_time[4, 1]);
//global.best_time[5, 0] = ini_read_real ("savedata5", "Best Time[5-0]", global.best_time[5, 0]);
//global.best_time[5, 1] = ini_read_real ("savedata5", "Best Time[5-1]", global.best_time[5, 1]);
global.best_time[6, 0] = ini_read_real ("savedata5", "Best Time[6-0]", global.best_time[6, 0]);
global.best_time[6, 1] = ini_read_real ("savedata5", "Best Time[6-1]", global.best_time[6, 1]);
global.best_time[7, 0] = ini_read_real ("savedata5", "Best Time[7-0]", global.best_time[7, 0]);
global.best_time[7, 1] = ini_read_real ("savedata5", "Best Time[7-1]", global.best_time[7, 1]);
global.best_time[8, 0] = ini_read_real ("savedata5", "Best Time[8-0]", global.best_time[8, 0]);
//global.best_time[9, 0] = ini_read_real ("savedata5", "Best Time[9-0]", global.best_time[9, 0]);
global.best_time[10, 0] = ini_read_real ("savedata5", "Best Time[10-0]", global.best_time[10, 0]);
//global.best_time[11, 0] = ini_read_real ("savedata5", "Best Time[11-0]", global.best_time[11, 0]);

//Read best scores
global.best_score[0, 0] = ini_read_real ("savedata5", "Best Score[0-0]", global.best_score[0, 0]);
global.best_score[0, 1] = ini_read_real ("savedata5", "Best Score[0-1]", global.best_score[0, 1]);
global.best_score[2, 0] = ini_read_real ("savedata5", "Best Score[2-0]", global.best_score[2, 0]);
global.best_score[2, 1] = ini_read_real ("savedata5", "Best Score[2-1]", global.best_score[2, 1]);
global.best_score[4, 0] = ini_read_real ("savedata5", "Best Score[4-0]", global.best_score[4, 0]);
global.best_score[4, 1] = ini_read_real ("savedata5", "Best Score[4-1]", global.best_score[4, 1]);
global.best_score[6, 0] = ini_read_real ("savedata5", "Best Score[6-0]", global.best_score[6, 0]);
global.best_score[6, 1] = ini_read_real ("savedata5", "Best Score[6-1]", global.best_score[6, 1]);
global.best_score[8, 0] = ini_read_real ("savedata5", "Best Score[8-0]", global.best_score[8, 0]);
global.best_score[10, 0] = ini_read_real ("savedata5", "Best Score[10-0]", global.best_score[10, 0]);

//Read best rings
global.best_rings[0, 0] = ini_read_real ("savedata5", "Best Rings[0-0]", global.best_rings[0, 0]);
global.best_rings[0, 1] = ini_read_real ("savedata5", "Best Rings[0-1]", global.best_rings[0, 1]);
global.best_rings[2, 0] = ini_read_real ("savedata5", "Best Rings[2-0]", global.best_rings[2, 0]);
global.best_rings[2, 1] = ini_read_real ("savedata5", "Best Rings[2-1]", global.best_rings[2, 1]);
global.best_rings[4, 0] = ini_read_real ("savedata5", "Best Rings[4-0]", global.best_rings[4, 0]);
global.best_rings[4, 1] = ini_read_real ("savedata5", "Best Rings[4-1]", global.best_rings[4, 1]);
global.best_rings[6, 0] = ini_read_real ("savedata5", "Best Rings[6-0]", global.best_rings[6, 0]);
global.best_rings[6, 1] = ini_read_real ("savedata5", "Best Rings[6-1]", global.best_rings[6, 1]);
global.best_rings[8, 0] = ini_read_real ("savedata5", "Best Rings[8-0]", global.best_rings[8, 0]);
global.best_rings[10, 0] = ini_read_real ("savedata5", "Best Rings[10-0]", global.best_rings[10, 0]);

//ini_close();