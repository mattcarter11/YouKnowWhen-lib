# $scoreboard players set min rng $(min)
# $scoreboard players set max rng $(max)
$execute store result score out rng run random value $(min)..$(max)