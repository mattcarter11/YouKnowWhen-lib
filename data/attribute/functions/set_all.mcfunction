# Update
execute unless score @s a_health = health attributes run function attribute:private/health/set
execute unless score @s a_armor = armor attributes run function attribute:private/armor/set
execute unless score @s a_armor_t = armor_t attributes run function attribute:private/armor_t/set
execute unless score @s a_damage = damage attributes run function attribute:private/damage/set
execute unless score @s a_attack_k = attack_k attributes run function attribute:private/attack_k/set
execute unless score @s a_attack_s = attack_s attributes run function attribute:private/attack_s/set
execute unless score @s a_knock_r = knock_r attributes run function attribute:private/knock_r/set
execute unless score @s a_speed = speed attributes run function attribute:private/speed/set

# Clear set_settings
scoreboard players set health attributes 0
scoreboard players set armor attributes 0
scoreboard players set armor_t attributes 0
scoreboard players set damage attributes 0
scoreboard players set attack_k attributes 0
scoreboard players set attack_s attributes 0
scoreboard players set knock_r attributes 0
scoreboard players set speed attributes 0
