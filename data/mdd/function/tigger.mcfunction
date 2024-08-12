# When a mob dies, dropps a custom item which is detected and this function is called as the item at @s. The item also inherits the entity tags.

function game:mob_death
function items:mob_death/main
execute if predicate 0_enemy_boss:mob_death/is_trigger run function 0_enemy_boss:on_death/trigger
