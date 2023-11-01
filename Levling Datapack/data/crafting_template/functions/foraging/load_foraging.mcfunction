

scoreboard objectives add foraging_level dummy 1
scoreboard objectives add foraging_experience dummy 1
scoreboard objectives add last_foraging_experience dummy 1
scoreboard objectives add foraging_experience_difference dummy 1
scoreboard objectives add foraging_experience_needed dummy 1

scoreboard objectives add oak_logs_mined minecraft.mined:oak_log
scoreboard objectives add birch_logs_mined minecraft.mined:birch_log
scoreboard objectives add spruce_logs_mined minecraft.mined:spruce_log
scoreboard objectives add jungle_logs_mined minecraft.mined:jungle_log
scoreboard objectives add acacia_logs_mined minecraft.mined:acacia_log
scoreboard objectives add dark_oak_logs_mined minecraft.mined:dark_oak_log
scoreboard objectives add mushroom_stems_mined minecraft.mined:mushroom_stem
scoreboard objectives add crimson_stems_mined minecraft.mined:crimson_stem
scoreboard objectives add warped_stems_mined minecraft.mined:warped_stem
scoreboard objectives add oak_sapling_placed minecraft.used:oak_sapling
scoreboard objectives add birch_sapling_placed minecraft.used:birch_sapling
scoreboard objectives add spruce_sapling_placed minecraft.used:spruce_sapling
scoreboard objectives add jungle_sapling_placed minecraft.used:jungle_sapling
scoreboard objectives add acacia_sapling_placed minecraft.used:acacia_sapling
scoreboard objectives add dark_oak_sapling_placed minecraft.used:dark_oak_sapling
scoreboard objectives add brown_mushroom_placed minecraft.used:brown_mushroom
scoreboard objectives add red_mushroom_placed minecraft.used:red_mushroom
scoreboard objectives add crimson_fungus_placed minecraft.used:crimson_fungus
scoreboard objectives add warped_fungus_placed minecraft.used:warped_fungus




#bossbar add foraging:foraging {"text":"Foraging","color":"gold"}
#bossbar set foraging:foraging color yellow
#bossbar set foraging:foraging players @a
#bossbar set foraging:foraging visible false

execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 0
execute as @a at @s run scoreboard players operation @s exponent = @s foraging_level
execute as @a at @s if score @s exponent matches 2.. run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s foraging_experience_needed = @s result

