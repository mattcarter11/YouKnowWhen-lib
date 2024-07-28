# Update current attribute
scoreboard players operation @s a_armor = armor attributes

# Reset max armor +
attribute @s generic.armor modifier remove 65536-0-0-0-0
attribute @s generic.armor modifier remove 32768-0-0-0-0
attribute @s generic.armor modifier remove 16384-0-0-0-0
attribute @s generic.armor modifier remove 8192-0-0-0-0
attribute @s generic.armor modifier remove 4096-0-0-0-0
attribute @s generic.armor modifier remove 2048-0-0-0-0
attribute @s generic.armor modifier remove 1024-0-0-0-0
attribute @s generic.armor modifier remove 512-0-0-0-0
attribute @s generic.armor modifier remove 256-0-0-0-0
attribute @s generic.armor modifier remove 128-0-0-0-0
attribute @s generic.armor modifier remove 64-0-0-0-0
attribute @s generic.armor modifier remove 32-0-0-0-0
attribute @s generic.armor modifier remove 16-0-0-0-0
attribute @s generic.armor modifier remove 8-0-0-0-0
attribute @s generic.armor modifier remove 4-0-0-0-0
attribute @s generic.armor modifier remove 2-0-0-0-0
attribute @s generic.armor modifier remove 1-0-0-0-0

# Reset max armor -
attribute @s generic.armor modifier remove 65536-1-1-1-1
attribute @s generic.armor modifier remove 32768-1-1-1-1
attribute @s generic.armor modifier remove 16384-1-1-1-1
attribute @s generic.armor modifier remove 8192-1-1-1-1
attribute @s generic.armor modifier remove 4096-1-1-1-1
attribute @s generic.armor modifier remove 2048-1-1-1-1
attribute @s generic.armor modifier remove 1024-1-1-1-1
attribute @s generic.armor modifier remove 512-1-1-1-1
attribute @s generic.armor modifier remove 256-1-1-1-1
attribute @s generic.armor modifier remove 128-1-1-1-1
attribute @s generic.armor modifier remove 64-1-1-1-1
attribute @s generic.armor modifier remove 32-1-1-1-1
attribute @s generic.armor modifier remove 16-1-1-1-1
attribute @s generic.armor modifier remove 8-1-1-1-1
attribute @s generic.armor modifier remove 4-1-1-1-1
attribute @s generic.armor modifier remove 2-1-1-1-1
attribute @s generic.armor modifier remove 1-1-1-1-1

# Set max armor +
execute if score armor attributes matches 65536.. run attribute @s generic.armor modifier add 65536-0-0-0-0 "655.36" 655.36 add
execute if score armor attributes matches 65536.. run scoreboard players remove armor attributes 65536
execute if score armor attributes matches 32768.. run attribute @s generic.armor modifier add 32768-0-0-0-0 "327.68" 327.68 add
execute if score armor attributes matches 32768.. run scoreboard players remove armor attributes 32768
execute if score armor attributes matches 16384.. run attribute @s generic.armor modifier add 16384-0-0-0-0 "163.84" 163.84 add
execute if score armor attributes matches 16384.. run scoreboard players remove armor attributes 16384
execute if score armor attributes matches 16384.. run attribute @s generic.armor modifier add 8192-0-0-0-0 "81.92" 81.92 add
execute if score armor attributes matches 8192.. run scoreboard players remove armor attributes 8192
execute if score armor attributes matches 4096.. run attribute @s generic.armor modifier add 4096-0-0-0-0 "40.96" 40.96 add
execute if score armor attributes matches 4096.. run scoreboard players remove armor attributes 4096
execute if score armor attributes matches 2048.. run attribute @s generic.armor modifier add 2048-0-0-0-0 "20.48" 20.48 add
execute if score armor attributes matches 2048.. run scoreboard players remove armor attributes 2048
execute if score armor attributes matches 1024.. run attribute @s generic.armor modifier add 1024-0-0-0-0 "10.24" 10.24 add
execute if score armor attributes matches 1024.. run scoreboard players remove armor attributes 1024
execute if score armor attributes matches 512.. run attribute @s generic.armor modifier add 512-0-0-0-0 "5.12" 5.12 add
execute if score armor attributes matches 512.. run scoreboard players remove armor attributes 512
execute if score armor attributes matches 256.. run attribute @s generic.armor modifier add 256-0-0-0-0 "2.56" 2.56 add
execute if score armor attributes matches 256.. run scoreboard players remove armor attributes 256
execute if score armor attributes matches 128.. run attribute @s generic.armor modifier add 128-0-0-0-0 "1.28" 1.28 add
execute if score armor attributes matches 128.. run scoreboard players remove armor attributes 128
execute if score armor attributes matches 64.. run attribute @s generic.armor modifier add 64-0-0-0-0 "0.64" 0.64 add
execute if score armor attributes matches 64.. run scoreboard players remove armor attributes 64
execute if score armor attributes matches 32.. run attribute @s generic.armor modifier add 32-0-0-0-0 "0.32" 0.32 add
execute if score armor attributes matches 32.. run scoreboard players remove armor attributes 32
execute if score armor attributes matches 16.. run attribute @s generic.armor modifier add 16-0-0-0-0 "0.16" 0.16 add
execute if score armor attributes matches 16.. run scoreboard players remove armor attributes 16
execute if score armor attributes matches 8.. run attribute @s generic.armor modifier add 8-0-0-0-0 "0.08" 0.08 add
execute if score armor attributes matches 8.. run scoreboard players remove armor attributes 8
execute if score armor attributes matches 4.. run attribute @s generic.armor modifier add 4-0-0-0-0 "0.04" 0.04 add
execute if score armor attributes matches 4.. run scoreboard players remove armor attributes 4
execute if score armor attributes matches 2.. run attribute @s generic.armor modifier add 2-0-0-0-0 "0.02" 0.02 add
execute if score armor attributes matches 2.. run scoreboard players remove armor attributes 2
execute if score armor attributes matches 1.. run attribute @s generic.armor modifier add 1-0-0-0-0 "0.01" 0.01 add

# Set max armor -
execute if score armor attributes matches ..-65536 run attribute @s generic.armor modifier add 65536-1-1-1-1 "-655.36" -655.36 add
execute if score armor attributes matches ..-65536 run scoreboard players add armor attributes 65536
execute if score armor attributes matches ..-32768 run attribute @s generic.armor modifier add 32768-1-1-1-1 "-327.68" -327.68 add
execute if score armor attributes matches ..-32768 run scoreboard players add armor attributes 32768
execute if score armor attributes matches ..-16384 run attribute @s generic.armor modifier add 16384-1-1-1-1 "-163.84" -163.84 add
execute if score armor attributes matches ..-16384 run scoreboard players add armor attributes 16384
execute if score armor attributes matches ..-16384 run attribute @s generic.armor modifier add 8192-1-1-1-1 "-81.92" -81.92 add
execute if score armor attributes matches ..-8192 run scoreboard players add armor attributes 8192
execute if score armor attributes matches ..-4096 run attribute @s generic.armor modifier add 4096-1-1-1-1 "-40.96" -40.96 add
execute if score armor attributes matches ..-4096 run scoreboard players add armor attributes 4096
execute if score armor attributes matches ..-2048 run attribute @s generic.armor modifier add 2048-1-1-1-1 "-20.48" -20.48 add
execute if score armor attributes matches ..-2048 run scoreboard players add armor attributes 2048
execute if score armor attributes matches ..-1024 run attribute @s generic.armor modifier add 1024-1-1-1-1 "-10.24" -10.24 add
execute if score armor attributes matches ..-1024 run scoreboard players add armor attributes 1024
execute if score armor attributes matches ..-512 run attribute @s generic.armor modifier add 512-1-1-1-1 "-5.12" -5.12 add
execute if score armor attributes matches ..-512 run scoreboard players add armor attributes 512
execute if score armor attributes matches ..-256 run attribute @s generic.armor modifier add 256-1-1-1-1 "-2.56" -2.56 add
execute if score armor attributes matches ..-256 run scoreboard players add armor attributes 256
execute if score armor attributes matches ..-128 run attribute @s generic.armor modifier add 128-1-1-1-1 "-1.28" -1.28 add
execute if score armor attributes matches ..-128 run scoreboard players add armor attributes 128
execute if score armor attributes matches ..-64 run attribute @s generic.armor modifier add 64-1-1-1-1 "-0.64" -0.64 add
execute if score armor attributes matches ..-64 run scoreboard players add armor attributes 64
execute if score armor attributes matches ..-32 run attribute @s generic.armor modifier add 32-1-1-1-1 "-0.32" -0.32 add
execute if score armor attributes matches ..-32 run scoreboard players add armor attributes 32
execute if score armor attributes matches ..-16 run attribute @s generic.armor modifier add 16-1-1-1-1 "-0.16" -0.16 add
execute if score armor attributes matches ..-16 run scoreboard players add armor attributes 16
execute if score armor attributes matches ..-8 run attribute @s generic.armor modifier add 8-1-1-1-1 "-0.08" -0.08 add
execute if score armor attributes matches ..-8 run scoreboard players add armor attributes 8
execute if score armor attributes matches ..-4 run attribute @s generic.armor modifier add 4-1-1-1-1 "-0.04" -0.04 add
execute if score armor attributes matches ..-4 run scoreboard players add armor attributes 4
execute if score armor attributes matches ..-2 run attribute @s generic.armor modifier add 2-1-1-1-1 "-0.02" -0.02 add
execute if score armor attributes matches ..-2 run scoreboard players add armor attributes 2
execute if score armor attributes matches ..-1 run attribute @s generic.armor modifier add 1-1-1-1-1 "-0.01" -0.01 add
