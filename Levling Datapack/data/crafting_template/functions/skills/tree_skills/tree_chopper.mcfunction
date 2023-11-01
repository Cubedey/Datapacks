execute unless score @s bottom_reached matches 1 positioned ~ ~-1 ~ if block ~ ~ ~ #crafting_template:logs_list run function crafting_template:skills/tree_skills/tree_chopper
scoreboard players set @s bottom_reached 1
setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if block ~ ~ ~ #crafting_template:logs_list run function crafting_template:skills/tree_skills/tree_chopper
