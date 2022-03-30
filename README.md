# Summary

A datapack with a bunch of libraries/tools for standarizing basic functionalities a code/map maker can use. These are

 - [attribute]() Set any entity attributes using scoreboards.
 - [countdown]() Have up to two score based countdowns for each entity.
 - [damage]() A library to apply custom damage to entities.
    - By default takes into account: *damage reduction of armor, armor_toughness and resistance effect, game difficulty*
    - After damage is applyed, custom functions can be run.
 - [elister]() List usually used entities when doing commands/map making.
 - [launch]() A library for launching/throwing entities (except players) arround based on a vector.
 - [mmd]() Used to do trigger functions when and where an entity dies. 
 - [olink]() A datapack for linking entities. 
    - Each entity can conccurently have up to two links, each divided into it's channel.
 - [rng]() Generates a random value betwen a min and max range.

The libraries launch, olink, rng are based on Cloud Wolf implementations and the damage is based on AESTD

# Other usefull libs

 - [mrcd](https://github.com/K-bai/Minecraft-Ray-Collision-Detector) Super precise raycast system in vanilla minecraft with minimal command cost.