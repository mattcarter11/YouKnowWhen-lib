# Summary
A datapack for linking entities. Each entity can conccurently have up to two links, each divided into it's channel. 

A channel can be thought like a frequency spectrum, where an link is a frequency in that channel and everyone with that frequency is linked. To have concurent links, we add more channels.
  - Channel   -->   scoreboard = `ch<X>_olink`
  - Frequency -->   link = a specific scoreboard value

Also, each channel is divided into players IDs (0..300) and others (301..k) ids. Each channel is interacted by calling the cuntions `olink:ch<X>/<function>`.

# Linking / Managing links

To link entities together, one of them must be in an existing link. So, first as one of the entities we create the link and then as the rest of the entities, we join the link. Logically, they are joining an existing link, we don't need to create it.

## Crate a link

To start a new link for an entity in the channel `X`, call the function `olink:ch<X>/new_link` as `@s`.
    
    function olink:ch<X>/new_link

After creating the link, the link id is also set to the score `.id` of the channel `ch<X>_olink`. 

## Join a link

We first set the `.id` of the link and then running the function `olink:ch<X>/join_link` as all entities that must join the link. 

    scoreboard players operation .id ch<X>_olink = @<l> ch<X>_olink
    execute as @<*> run function function olink:ch<X>/join_link

If we previously called the function new_link/find_linked/count_linkedsets the `.id` socre is automatically set, thus we only need to run the join function.

    execute as @<*> run function function olink:ch<X>/join_link

A better and more efficient way and to do it is to use the following on line equivalent

    scoreboard players operation @<*> ch<X>_olink = @<l> ch<X>_olink

## Exit a link

To exit a link you simply run the `olink:ch<X>/exit_link` function.

    function olink:ch<X>/exit_link

Or run the command:

    scoreboard players reset @s ch1_olink

## Crosslinking entities

Crosslinking is usefull to having tree structures (parent -> child/parent -> child -> ...). To do this we'll use the fisrt channel for the parent ids and the second for the child. To do thisWe first set the `.id` of the parent link and then running the function `olink:ch<X>/join_link` as all child entities that must be crosslinked. 

    scoreboard players operation .id ch<X>_olink = @<l> ch<Y>_olink
    execute as @<*> run function function olink:ch<X>/join_link

*Ex: A parent has 301 ch1 score and their children have 301 ch2 score*

# Interacting with links

## Running as a linked entity

To get all the entities in a link, we need to run the function `olink:ch<X>/find_linked` as one of the entities inside the link. All the entities in the `@s` link will get the tag `ch<X>_linked` and all previous `ch<X>_linked` tagged entityes will lose the tag.
    
    function olink:ch<X>/find_linked
    execute as @<*>[tag=ch<X>_elinked]

## Counting linked entities

By calling the function `olink:ch<X>/count_linked`, the score `.count` is set to the number of entities in that channel link.

    function olink:ch<X>/count_linked
    scoreboard players get .count ch1_olink


## Both things

To keep performance, there's also a function that does both previous explained functions

    function olink:ch<X>/find_count_linked

## Checking if entity is in link

To check if an entity is in a link, you can use the predicate `olink:ch<x>/in_link`, which passes if it's inside a link

    execute if predicate olink:ch<x>/in_link run <...>

You could also use the `olink:ch<X>/find_linked` or `olink:ch<X>/count_linked` functions, but it would be less efficient.

## Crosslinking entities

To get all crosslinked, we need to run the function `olink:ch<X>/find_crosslinked_ch<Y>` as one of the entities inside the link. All the entities in the `@s` link will get the tag `ch<X>_linked_ch<Y>` and all previous `ch<X>_linked_ch<Y>` tagged entityes will lose the tag.
    
    function olink:ch<X>/find_crosslinked_ch<Y>
    execute as @<*>[tag=ch<X>_elinked_ch<2>]


# Legend
  - `@<l>`: entity with/in a link
  - `@<*>`: entities selected
  - `ch<X>_olink`: X channel scoreboard
  - `ch<X>_linked`: tag given to linked entities when finding them

# Examples

## Player and Pig
Link player to pig

    # summon.mcfunction (called by the player)
    summon pig ~ ~ ~ {Tags:["init","test"]}
    function olink:ch1/new_link
    execute as @e[type=pig,limit=1,tag=init] run function olink:ch1/join_link
    tag @e[type=pig,limit=1,tag=init] remove init

And tp it to the player

    # tp.mcfunction
    function olink:ch1/find_linked
    tp @e[type=pig,tag=ch1_olinked] @s

# Supporting more concurent links

You simply need to add the new channel scoreboard at the load function, duplicate a channel function and predicate foders and edit the scoreboards and tags.

# Other
This lib is a modified version of the Cloud Wolf olink generator: https://www.youtube.com/watch?v=dNBtFw1M5oA

**IMPORTNAT**: Apart from the *olink* folder you also need *minercaft* for loading the function `olink:private/load`. You could also load it manually.