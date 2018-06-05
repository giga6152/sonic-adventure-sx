///scrInitializeBestStats()

/*Initializes best statistics for a level based on time, score, and rings collected. All
these variables are stored in 2 dimensional arrays.

//Initialize best time
/*E.G. global.best_time[0, 0] = 3599999; Shows the best time in milliseconds. Therefore
the number 3599999 represents 59'59"999 in millisecond format. The first array checks for
characters and the second array checks for the stage.*/

global.best_time[0, 0] = 3599999;
global.best_time[0, 1] = 3599999;
global.best_time[1, 0] = 3599999;
global.best_time[1, 1] = 3599999;
global.best_time[2, 0] = 3599999;
global.best_time[2, 1] = 3599999;
//global.best_time[3, 0] = 3599999;
//global.best_time[3, 1] = 3599999;
global.best_time[4, 0] = 3599999;
global.best_time[4, 1] = 3599999;
//global.best_time[5, 0] = 3599999;
//global.best_time[5, 1] = 3599999;
global.best_time[6, 0] = 3599999;
global.best_time[6, 1] = 3599999;
global.best_time[7, 0] = 3599999;
global.best_time[7, 1] = 3599999;
global.best_time[8, 0] = 3599999;
//global.best_time[9, 0] = 3599999;
global.best_time[10, 0] = 3599999;
//global.best_time[11, 0] = 3599999;

//Initialize best score
//E.G. global.best_score[0, 0] = 0; Shows the high score (in points, obviously!) :)
global.best_score[0, 0] = 0;
global.best_score[0, 1] = 0;
global.best_score[2, 0] = 0;
global.best_score[2, 1] = 0;
global.best_score[4, 0] = 0;
global.best_score[4, 1] = 0;
global.best_score[6, 0] = 0;
global.best_score[6, 1] = 0;
global.best_score[8, 0] = 0;
global.best_score[10, 0] = 0;

//Initialize best rings
/*E.G. global.best_rings[0, 0] = 0; Shows the highest amout of rings collected in the
stage*/
global.best_rings[0, 0] = 0;
global.best_rings[0, 1] = 0;
global.best_rings[2, 0] = 0;
global.best_rings[2, 1] = 0;
global.best_rings[4, 0] = 0;
global.best_rings[4, 1] = 0;
global.best_rings[6, 0] = 0;
global.best_rings[6, 1] = 0;
global.best_rings[8, 0] = 0;
global.best_rings[10, 0] = 0;

global.chrt = 0;
global.actnumb = 0;
