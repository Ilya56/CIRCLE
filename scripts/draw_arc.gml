var xx = argument[0]
var yy = argument[1]
var r = argument[2]
var angle = argument[3]
var sangle = 0
var width = 1
var step = 0.1
if argument_count > 4
{
    sangle = argument[4]
    if argument_count > 5
    {
        width = argument[5]
        if argument_count > 6
            step = argument[6]
    }
}

for(var i = 0; i < width; i++)
{
    for(var j = sangle; j < sangle + angle - step; j += step)
    {
        var t = j / 180 * pi
        var t1 = (j + step) / 180 * pi
        var ri = r + i
        draw_line(xx + ri * cos(t), yy + ri * sin(t), xx + ri * cos(t1), yy + ri * sin(t1))
    }
}