var c = obj_control;
c.game = false
with obj_wall
    sp = 0

with c
{
    if time > btime
    {
        nbest = true
        btime = time
        blevel = level_name[level]
        ini_open(INI)
        ini_write_real("best", "time", btime)
        ini_write_string("best", "level", blevel)
        ini_close()
    }
}
