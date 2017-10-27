var time = argument0
var res = ""
if time < 1000
    res += "0"
res += string(floor(time / 100)) + ":" 
if time mod 100 < 10
    res += "0"
res += string(time mod 100)
return res