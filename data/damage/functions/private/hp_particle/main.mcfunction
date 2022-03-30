scoreboard players operation #tmp damage = @s damage
scoreboard players set #tmp2 damage 100
scoreboard players operation #tmp damage /= #tmp2 damage
scoreboard players set #tmp2 damage 2
scoreboard players operation #tmp damage /= #tmp2 damage
function damage:private/hp_particle/loop
