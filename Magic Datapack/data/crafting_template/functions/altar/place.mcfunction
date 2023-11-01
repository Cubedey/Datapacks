execute unless entity @p[distance=0..1] run setblock ~ ~ ~ enchanting_table
execute if entity @p[distance=0..1] run function crafting_template:altar/remove
tag @s add placed