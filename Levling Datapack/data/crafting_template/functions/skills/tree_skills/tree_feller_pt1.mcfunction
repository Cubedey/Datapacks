execute if block ~ ~ ~ #crafting_template:logs_list run function crafting_template:skills/tree_skills/tree_chopper
scoreboard players set @s dummy -1
execute if score @s treefeller_x_max_reached matches -1 run scoreboard players add @s treefeller_x 1
execute if score @s treefeller_x > @s treefeller_x_max run scoreboard players set @s treefeller_x_max_reached 1
execute positioned ~1 ~ ~ if score @s treefeller_x_max_reached matches -1 run function crafting_template:skills/tree_skills/tree_feller_pt1

#execute positioned ~ ~1 ~ if score @s treefeller_y_max_reached matches -1 run scoreboard players add @s treefeller_y 1
#execute if score @s treefeller_y > @s treefeller_y_max run scoreboard players set @s treefeller_y_max_reached 1
#execute positioned ~ ~1 ~ if score @s treefeller_y_max_reached matches -1 run function crafting_template:tree_feller_pt1

execute if score @s treefeller_z_max_reached matches -1 run scoreboard players add @s treefeller_z 1
execute if score @s treefeller_z > @s treefeller_z_max run scoreboard players set @s treefeller_z_max_reached 1
execute positioned ~ ~ ~1 if score @s treefeller_z_max_reached matches -1 run function crafting_template:skills/tree_skills/tree_feller_pt1


execute if score @s treefeller_x_max_reached matches 1 if score @s treefeller_z_max_reached matches 1 run function crafting_template:skills/tree_skills/tree_feller_pt2

#if score @s treefeller_y_max_reached matches 1