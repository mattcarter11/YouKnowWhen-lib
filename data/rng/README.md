# Summary

Generates a random value betwen `min` and `max` stored at `out`. Is expected that `min` <= `max`. The values stored in the `rng` scoreboard. 

There's also an implementation for percentage rolls.

# Usage pre 1.20.2
## Basic

To generate a value betwen `min` and `max` you first set the range.

    scoreboard players set min rng <value>
    scoreboard players set max rng <value>

And then run the `rng:interval` function.

    function rng:interval

## Percentage

There are three ways to do a percentage execution, using a fucntion or a predicate, the second being more efficient.

### Command 

Directly run the adequate command and then check the `out` value.

    execute store result score out rng run random value 1..100

### Function

The function `rng:percentage` generates a random value between 1 to 100. You simply run the function and then check the `out` value.
    
    function rng:percentage
    execute if score rng out matches ..<percentage> run function <function>
    execute if score rng out matches ..<percentage> run function <function>

### Predicate

The predicate `rng:percentage_check` passes or not following a given percentage value, `%`.

    scoreboard players set % rng <value>
    execute if predicate rng:percentage_check run <...>

If you whant to run multiple functions, you'll need to store the resut in a temporal scoreboard. For example:

    execute store result score #%pass rng run execute if predicate rng:percentage_check
    execute if score #%pass rng matches 1 run <...>
    execute if score #%pass rng matches 1 run <...>
    execute if score #%pass rng matches 1 run <...>

## Pre 1.20.2 - Generate a new rng seed

The function `rng:reset_seed` generates a new seed. Each time the game loads, the seed is reset

    function rng:reset_seed


# Examples

Trigger function 25% of the time (using if score)

    function rng:percentage
    execute if score rng out matches ..25 run function <function>

Trigger say 25% of the time (using predicates)

    scoreboard players set % rng 25
    execute if predicate rng:percentage_check run function <function>

Store result (25% of the time will be 1)

    scoreboard players set % rng 25
    execute store result score #%pass rng run execute if predicate rng:percentage_check

# To keep in mind

When having nested rng generations, if more that one funcion use the value you'll need to store it.

## Wrong

    scoreboard players set min rng 1
    scoreboard players set max rng 3
    function rng:interval
    execute if score rng out matches 1 run function <function>  # this function also runs function rng:interval
    execute if score rng out matches 2 run function <function>  # this function also runs function rng:interval
    execute if score rng out matches 3 run function <function>  # this function also runs function rng:interval

## Right

    scoreboard players set min rng 1
    scoreboard players set max rng 3
    function rng:interval
    scoreboard players operation #tmp rng = out rng
    execute if score #tmp out matches 1 run function <function>  # this function also runs function rng:interval
    execute if score #tmp out matches 2 run function <function>  # this function also runs function rng:interval
    execute if score #tmp out matches 3 run function <function>  # this function also runs function rng:interval


# Other
This lib is a modified version of the Cloud Wolf rng generator: https://www.youtube.com/watch?v=fzZASMieGn0

____

**IMPORTNAT**: Apart from the *rng* folder you also need *minercaft* for loading the function `rng:private/load`. You could also load it manually.
