#bossbar set foraging:foraging players @a

scoreboard players set @s result 0
#might wanna check if part of tree for mining oak logs
#oak_log
execute if score @s oak_logs_mined matches 1.. run scoreboard players set @s result 5

#birch_log
execute if score @s birch_logs_mined matches 1.. run scoreboard players set @s result 6

#spruce_log
execute if score @s spruce_logs_mined matches 1.. run scoreboard players set @s result 7

#jungle_log
execute if score @s jungle_logs_mined matches 1.. run scoreboard players set @s result 8

#acacia_log
execute if score @s acacia_logs_mined matches 1.. run scoreboard players set @s result 9

#dark_oak_log
execute if score @s dark_oak_logs_mined matches 1.. run scoreboard players set @s result 10

#mushroom_stem
execute if score @s mushroom_stems_mined matches 1.. run scoreboard players set @s result 10

#crimson_stem
execute if score @s crimson_stems_mined matches 1.. run scoreboard players set @s result 20

#warped_stem
execute if score @s wapred_stems_mined matches 1.. run scoreboard players set @s result 20

#oak_sapling
#execute if score @s oak_sapling_placed matches 1.. run scoreboard players set @s result 30

#birch_sapling
#execute if score @s birch_sapling_placed matches 1.. run scoreboard players set @s result 35

#spruce_sapling
#execute if score @s spruce_sapling_placed matches 1.. run scoreboard players set @s result 40

#jungle_sapling
#execute if score @s jungle_sapling_placed matches 1.. run scoreboard players set @s result 45

#acacia_sapling
#execute if score @s acacia_sapling_placed matches 1.. run scoreboard players set @s result 50

#dark_oak_sapling
#execute if score @s dark_oak_sapling_placed matches 1.. run scoreboard players set @s result 75

#brown_mushroom
#execute if score @s brown_mushroom_placed matches 1.. run scoreboard players set @s result 75

#red_mushroom
#execute if score @s red_mushroom_placed matches 1.. run scoreboard players set @s result 75

#crimson_fungus
#execute if score @s crimson_fungus_placed matches 1.. run scoreboard players set @s result 100

#warped_fungus
#execute if score @s wapred_fungus_placed matches 1.. run scoreboard players set @s result 100





scoreboard players operation @s foraging_experience += @s result

execute if score @s foraging_experience >= @s foraging_experience_needed run function crafting_template:foraging/levelup_foraging

scoreboard players operation @s foraging_experience -= @s last_foraging_experience
scoreboard players operation @s foraging_experience_difference = @s foraging_experience
scoreboard players operation @s foraging_experience += @s last_foraging_experience

execute unless score @s foraging_experience_difference matches 0 run title @s actionbar [{"text":"Foraging: +","color":"gold"},{"score":{"name":"@s","objective":"foraging_experience_difference"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"foraging_experience"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"@s","objective":"foraging_experience_needed"},"color":"yellow"},{"text":")","color":"yellow"},{"text":" Level: ","color":"gold"},{"score":{"name":"@s","objective":"foraging_level"},"color":"yellow"}]
#execute if score @s foraging_experience_difference matches 0 run function crafting_template:foraging/foraging_bossbar
#execute if score @s tick = @s old_tick run bossbar set foraging:foraging visible false
execute unless score @s foraging_experience >= @s foraging_experience_needed run scoreboard players operation @s last_foraging_experience = @s foraging_experience
execute if score @s foraging_experience >= @s foraging_experience_needed run scoreboard players operation @s last_foraging_experience = @s foraging_experience_needed


#skills
execute if score @s shifting matches 1.. run function crafting_template:skills/tree_skills/tree_feller_pt1
scoreboard players set @s shifting 0





function crafting_template:foraging/foraging_scoreboard_reset
