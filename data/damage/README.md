# Summary

A library to apply custom damage to entities. There are two ways to apply damage: a general way, and a *specific* way.

This library, by default takes into account:

- damage reduction of armor, armor_toughness and resistance effect
- game difficulty

Through flags, this factors can be dissabled.

After damage is applyed, custom functions can be run.

# General damage

## Applying

Damages `@s` by the amount set in `@s damage` scoreboard. The value must be scaled by 100 *(1.5 hp -> 150)*.

    scoreboard players add @s damage <value>

Every tick, all the added damage is applyed to `@s`.

## Flags

By default armor, armor_toughness and resistance effect damage reduction is on. To ignore this reductions, two flags can be set.

    scoreboard players set ignore_armor damage 1
    scoreboard players set ignore_resistance damage 1

It also takes into account the game difficulty. The flag that controls this is.

    scoreboard players set ignore_difficulty damage 1

*NOTE: This flags are configured at initzalitzation of the datapack, at 'damage:load'. This flags are applyed to all the damage added each tick.*

# Specific damage

## Applying

Damages `@s` by the amount set in `amount damage_custom` scoreboard after applying the factors desired. The value must be scaled by 100 *(1.5 hp -> 150)*.

1. Setting the raw damage.

        scoreboard players set amount damage_custom <value>

2. Set the desired flags.

3. Calculate the resulting damage.

        execute as @s run function damage:apply_factors

Every tick, all the added damage is applyed to `@s`.

## Flags

Every time the *apply_factors* function is runned, all the factors (armor, armor_toughness, resistance and diffcultuy) are on. To dissable any falgs.

    scoreboard players set ignore_armor damage_custom 1
    scoreboard players set ignore_resistance damage_custom 1
    scoreboard players set ignore_difficulty damage_custom 1

# Running functions after damage is applyed

You can add more things to do after the dammage is applyed by by adding code at 'trigger.mcfunction'. Even if no damage is dones because of the armor or resitance effect, this function will still trigger.


# Other
This lib is a modified version of the custom damage system of the AESTD library: https://github.com/Aeldrion/AESTD

**IMPORTNAT**: Apart from the *damage* folder you also need *minercaft* for loading the function `damage:private/load` and running `damage:private/ticks` each tick. You could also load it manually and settup the ticking function to be run every tick.