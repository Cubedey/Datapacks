execute unless entity @p[distance=0..1] run setblock ~ ~ ~ glass
execute if entity @p[distance=0..1] run function crafting_template:mobfarm/remove
tag @s add placed