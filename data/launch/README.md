# Summary

A library for launching/throwing entities (except players) arround based on a vector

# Throw forward

To throw an entity towards the way they are facing, the entity, `as @s at @s`, needs to call the function `launch:forward`.
The vector is 0.1 blocks in module by default. By setting the score `factor` the vector gets scaled, thus givin the thow more strength.

    scoreboard players set factor launch 15
    execute as @s at @s run function launch:forward

Usually, entities are facing a target or the traight ahead, which makes the Y rotation (pitch) arround 0. This will cause the entity to have a lot of drag when being launched, thus not getting very far. By simply adding some degrees, this can be avoided.

    tp @s ~ ~ ~ ~ -5
    scoreboard players set factor launch 15
    execute as @s at @s run function launch:forward

If the calculations must be done from the player eyes, for example throwing a spell, you need to run the `tp` anchored to the entity eyes.

    execute as @s at @s anchored eyes run tp @s ~ ~ ~ ~ -5
    scoreboard players set factor launch 15
    execute as @s at @s run function launch:forward

# Throw towards an entity

To throw an entity facing another entity you firs need to tag the entity with `launch_mark` and then call the function `launch:towards_marked_entity`.

    tag @e[limit=1] add launch_mark
    execute as @s at @s run function launch:towards_marked_entity

Another option, which gives more controll to tweak the XY rotations is to run the forward command facing the entity with rotation.

    execute as @s at @s facing entity @e[limit=1] feet rotated ~ -5 run function launch:forward

# Throw towards an entity and reach it

To throw an entity facing another entity and reaching it you first need to tag the entity with `launch_mark` and then call the function `launch:reach_marked_entity`. The entity will be launched with an upward angle.

    tag @e[limit=1] add launch_mark
    execute as @s at @s run function launch:reach_marked_entity

# Flags

## Max value

By default the vector doesn't have a module (length) limit. But it can be limited so the vector can not go over a value by setting the score `max_value` before calling any launch function (the "strength" of the throw won't surpassa max value). After calling any launch function, this score will be reset.

    scoreboard players set max_value launch 10

## reset_factor_on_launch

This flag indicates if the `factor` score is reset to 1 evey time after calling a launch function. By default is set to 0 (false).

    scoreboard players set reset_factor_on_launch launch 1

# Usefull rotations / Examples

Rotate entity 5º up, relative (range 90..-90 = down..up)

    tp @s ~ ~ ~ ~ ~-5

Rotate entity 10º right, relative (range 180..-180)

    tp @s ~ ~ ~ ~10 ~

Rotate with a 25º up angle facing away a target entity

    execute as @s at @s anchored eyes facing entity @e[limit=1] feet run tp @s ~ ~ ~ ~180 -25

# Other
This lib is a modified version of the Cloud Wolf entity launch: https://www.youtube.com/watch?v=CGdUWe1A6RY

**IMPORTNAT**: Apart from the *launch* folder you also need *minercaft* for loading the function `launch:private/load`. You could also load it manually.

