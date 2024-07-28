particle damage_indicator ~ ~ ~ 0.1 0.5 0.1 .5 1 force
scoreboard players remove #tmp damage 1
execute if score #tmp damage matches 1.. run function damage:private/hp_particle/loop
