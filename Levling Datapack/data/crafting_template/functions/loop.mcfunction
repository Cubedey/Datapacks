execute as @a at @s if score @s deathCount matches 1.. run function crafting_template:upon_death
execute as @e at @s unless entity @s[nbt={Item:{tag:{PickedUp:2}}}] run data merge entity @s {Item:{tag:{PickedUp:1}}}

execute as @a at @s run function crafting_template:mining/loop_mining
execute as @a at @s run function crafting_template:farming/loop_farming
execute as @a at @s run function crafting_template:combat/loop_combat
execute as @a at @s run function crafting_template:foraging/loop_foraging
execute as @a at @s run function crafting_template:enchanting/loop_enchanting

#execute as @a at @s run function crafting_template:set_pickedup2





execute as @a at @s run scoreboard players add @s tick 1
execute as @a at @s run scoreboard players set @s treefeller_x 0
execute as @a at @s run scoreboard players set @s treefeller_y 0
execute as @a at @s run scoreboard players set @s treefeller_z 0
execute as @a at @s run scoreboard players set @s treefeller_x_max 3
execute as @a at @s run scoreboard players set @s treefeller_y_max 2
execute as @a at @s run scoreboard players set @s treefeller_z_max 3
execute as @a at @s run scoreboard players set @s treefeller_x_max_reached -1
execute as @a at @s run scoreboard players set @s treefeller_y_max_reached -1
execute as @a at @s run scoreboard players set @s treefeller_z_max_reached -1
execute as @a at @s run scoreboard players set @s bottom_reached 0

