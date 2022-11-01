# Summary
A library for making entities (except players) backoff/run away from a target (a.k. point in space) in the XZ axes without falling off edges (not 100% of the times).

# Backing Off

Before calling a ebackoff function you must first indicate if the entity moves away facing the target or not by setting up the `facing_target` flag (0: no, 1: yes).

    scoreboard players set facing_target ebackoff 0

## From a target

After setting the flag you have to tag the target entity you are backing off with the tag `ebackoff_target`. Once this done you can call the `ebackoff:from_target`. 

    scoreboard players set facing_target ebackoff 1
    tag @<t> add ebackoff_target
    execute as @s run function ebackoff:from_target

*Remember: the ebackoff_target tag is removed after each call, so if you are running this in a loop you must add the tag each time*

## From a player

Since usually we need to make entityes backoff from the nearest player, there's a sepcific function `ebackoff:from_nearest_player`. The advantage is that you don't need to add the `ebackoff_target` tag.

    scoreboard players set facing_target ebackoff 0
    execute as @s run function ebackoff:from_target

## Controlling the backoff velocity

The score `factor` is used to determine the backoff velocity, the value must be scaled by 100 *(x1.5 times -> 150)*. Each time the `ebackoff:from_<..>` function is called, the factor is reset to 100. 

    scoreboard players set factor ebackoff 150


# Legend
  - `@<t>`: entity you are backing off 
  - `@s`: entities that backs off

# Example

## Wolfs vs Sheeps
Let's make sheeps run away (x2.5 faster than default) of wolfs if they are at 10 blocks distance.

    # tick.mcfunction
    execute as @e[type=sheep] at @s if entity @e[type=wolf,distance=..10,limit=1] run function <datapack>:run_away

    # run_away.mcfunction
    scoreboard players set facing_target ebackoff 0
    scoreboard players set factor ebackoff 250
    tag @e[type=wolf,sort=nearest,limit=1] add ebackoff_target
    function ebackoff:from_target

## From a point in space
Let's say we whant all mobs to backoff from a certain point in space.

    # set_point.mcfunction
    kill @e[type=marker,tag=center]
    summon marker ~ ~ ~ {Tags:["center"]}

    # tick.mcfunction
    execute as @e[type=!player] at @s if entity @e[type=marker,tag=center,distance=..5,limit=1] run function <datapack>:run_away

    # run_away.mcfunction
    scoreboard players set facing_target ebackoff 0
    tag @e[type=marker,tag=center,sort=nearest,limit=1] add ebackoff_target
    function ebackoff:from_target

## Player vs Pillager
Let's make pillagers a bit harder by having them backoff from the player if they get too close.

    # tick.mcfunction
    scoreboard players set facing_target ebackoff 0
    execute as @e[type=pillager] at @s if entity @p[distance=..10] run function ebackoff:from_nearest_player

*You can find this examples under the `eblackoff:examples` folder*

# Other
This lib is a modified version of the back_off function of FlanDere Pillager Tweaks https://www.planetminecraft.com/data-pack/pillager-tweaks/

**IMPORTNAT**: Apart from the *ebackoff* folder you also need *minercaft* for loading the function `ebackoff:private/load`. You could also load it manually.

