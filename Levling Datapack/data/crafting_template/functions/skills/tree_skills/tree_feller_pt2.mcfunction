execute if block ~ ~ ~ #crafting_template:logs_list run function crafting_template:skills/tree_skills/tree_chopper
scoreboard players set @s dummy -1

execute if score @s treefeller_x_max_reached matches 1 run scoreboard players operation @s treefeller_x += @s dummy
scoreboard players operation @s treefeller_x_max *= @s dummy
execute if score @s treefeller_x <= @s treefeller_x_max if score @s treefeller_x_max_reached matches 1 run scoreboard players set @s treefeller_x_max_reached 2
scoreboard players operation @s treefeller_x_max *= @s dummy
execute positioned ~-1 ~ ~ if score @s treefeller_x_max_reached matches 1 run function crafting_template:skills/tree_skills/tree_feller_pt2

execute positioned ~1 ~ ~ if score @s treefeller_x_max_reached matches -1 run scoreboard players add @s treefeller_x 1
execute if score @s treefeller_x > @s treefeller_x_max run scoreboard players set @s treefeller_x_max_reached 0
execute positioned ~1 ~ ~ if score @s treefeller_x_max_reached matches -1 run function crafting_template:skills/tree_skills/tree_feller_pt2

execute if score @s treefeller_z_max_reached matches 1 run scoreboard players operation @s treefeller_z += @s dummy
scoreboard players operation @s treefeller_z_max *= @s dummy
execute if score @s treefeller_z <= @s treefeller_z_max if score @s treefeller_z_max_reached matches 1 run scoreboard players set @s treefeller_z_max_reached 2
scoreboard players operation @s treefeller_z_max *= @s dummy
execute if score @s treefeller_z_max_reached matches 1 run scoreboard players operation @s treefeller_x_max_reached *= @s dummy
execute if score @s treefeller_z_max_reached matches 1 run scoreboard players operation @s treefeller_x_max_reached -= @s dummy
execute positioned ~ ~ ~-1 if score @s treefeller_z_max_reached matches 1 run function crafting_template:skills/tree_skills/tree_feller_pt2

#execute positioned ~ ~ ~1 if score @s treefeller_z_max_reached matches -1 run scoreboard players add @s treefeller_z 1
#execute if score @s treefeller_z > @s treefeller_z_max run scoreboard players set @s treefeller_z_max_reached 0
#execute positioned ~ ~ ~1 if score @s treefeller_z_max_reached matches -1 run function crafting_template:skills/tree_skills/tree_feller_pt2

#execute positioned ~ ~-1 ~ if score @s treefeller_y_max_reached matches 1 run scoreboard players add @s treefeller_y 1
#scoreboard players operation @s treefeller_y_max *= @s dummy
#execute if score @s treefeller_y < @s treefeller_y_max run scoreboard players set @s treefeller_y_max_reached 2
#scoreboard players operation @s treefeller_y_max *= @s dummy

#scoreboard players operation @s treefeller_x_max_reached *= @s dummy
#scoreboard players operation @s treefeller_x_max_reached -= @s dummy
#scoreboard players operation @s treefeller_z_max_reached *= @s dummy
#scoreboard players operation @s treefeller_z_max_reached -= @s dummy
#execute positioned ~ ~-1 ~ if score @s treefeller_y_max_reached matches 1 run function crafting_template:skills/tree_skills/tree_feller_pt2
#scoreboard players set @s shifting 0



