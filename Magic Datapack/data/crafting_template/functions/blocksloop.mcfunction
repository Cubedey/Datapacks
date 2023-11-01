execute as @e[type=minecraft:item_frame,tag=mobfarm,tag=!placed] at @s run function crafting_template:mobfarm/place
execute as @e[type=minecraft:item_frame,tag=mobfarm,tag=placed] at @s unless block ~ ~ ~ minecraft:glass run function crafting_template:mobfarm/remove
execute as @e[type=minecraft:item_frame,tag=altar,tag=!placed] at @s run function crafting_template:altar/place
execute as @e[type=minecraft:item_frame,tag=altar,tag=placed] at @s unless block ~ ~ ~ minecraft:enchanting_table run function crafting_template:altar/remove

