scoreboard players set facing_target ebackoff 0
scoreboard players set factor ebackoff 5
tag @e[type=wolf,sort=nearest,limit=1] add ebackoff_target
function ebackoff:from_target