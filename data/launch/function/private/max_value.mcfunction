# Limit positive
execute if score #dx launch > max_value launch run scoreboard players operation #dx launch = max_value launch
execute if score #dz launch > max_value launch run scoreboard players operation #dz launch = max_value launch
execute if score #dy launch > max_value launch run scoreboard players operation #dy launch = max_value launch

# Limit negative
scoreboard players set #tmp launch -1
scoreboard players operation max_value launch *= #tmp launch
execute if score #dx launch < max_value launch run scoreboard players operation #dx launch = max_value launch
execute if score #dy launch < max_value launch run scoreboard players operation #dy launch = max_value launch
execute if score #dz launch < max_value launch run scoreboard players operation #dy launch = max_value launch

scoreboard players set max_value launch 0