///scrSetBestStats()
//Sets the best stats for a particular run of a level.

//Set the best time
if global.mil < global.best_time[global.chrt, global.actnumb]
{
    global.best_time[global.chrt, global.actnumb] = global.mil;
}

//Set the best score
if (global.chrt == 0 or global.chrt == 2 or global.chrt == 4 or global.chrt == 6 or global.chrt == 8 or global.chrt == 10)
{
    if global.finalPoints > global.best_score[global.chrt, global.actnumb]
    {
        global.best_score[global.chrt, global.actnumb] = global.finalPoints;
    }
}

//Set the best rings
if (global.chrt == 0 or global.chrt == 2 or global.chrt == 4 or global.chrt == 6 or global.chrt == 8 or global.chrt == 10)
{
    if global.rings > global.best_rings[global.chrt, global.actnumb]
    {
        global.best_rings[global.chrt, global.actnumb] = global.rings;
    }
}
