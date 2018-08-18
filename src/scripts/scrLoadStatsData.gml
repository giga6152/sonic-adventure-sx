///scrLoadStatsData(data)

///scrLoadStats(data)

if global.savedata == 1 && file_exists (global.dir+"stats.sav") scrReadStats1(); //else scrInitializeBestStats();
if global.savedata == 2 && file_exists (global.dir+"stats2.sav") scrReadStats2(); //else scrInitializeBestStats();
if global.savedata == 3 && file_exists (global.dir+"stats3.sav") scrReadStats3(); //else scrInitializeBestStats();
if global.savedata == 4 && file_exists (global.dir+"stats4.sav") scrReadStats4(); //else scrInitializeBestStats();
if global.savedata == 5 && file_exists (global.dir+"stats5.sav") scrReadStats5(); //else scrInitializeBestStats();
