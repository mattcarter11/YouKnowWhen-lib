tag @e[tag=eapproach_target,limit=1] add ebackoff_target
tag @e[tag=eapproach_target,limit=1] remove eapproach_target

scoreboard players operation factor eapproach *= #-1 eapproach
scoreboard players operation factor ebackoff = factor eapproach
scoreboard players operation facing_target ebackoff = facing_target eapproach
scoreboard players set factor eapproach 100

function ebackoff:from_target