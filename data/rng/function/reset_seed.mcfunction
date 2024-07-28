summon area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg rng run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp rng run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 rng run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 rng run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg rng += #temp rng
scoreboard players operation #lcg rng += #temp1 rng
scoreboard players operation #lcg rng += #temp2 rng
kill @e[tag=uuid]