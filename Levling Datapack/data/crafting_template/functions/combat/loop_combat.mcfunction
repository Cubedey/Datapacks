#bossbar set combat:combat players @a


scoreboard players set @s result 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:looting",lvl:1s}]}}}] run scoreboard players add @s result 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:looting",lvl:2s}]}}}] run scoreboard players add @s result 2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:looting",lvl:3s}]}}}] run scoreboard players add @s result 3

#known bug of multiple enemies being killed at same tick counting only as one. fix below
#scoreboard players operation @s result *= @s silverfish_killed
scoreboard players set @s dummy 8
scoreboard players operation @s result *= @s dummy

execute if score @s silverfish_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
execute if score @s endermites_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy


scoreboard players set @s dummy 10
scoreboard players operation @s result *= @s dummy
execute if score @s slimes_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
execute if score @s magma_cubes_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 12
scoreboard players operation @s result *= @s dummy
execute if score @s spiders_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 20
scoreboard players operation @s result *= @s dummy
execute if score @s zombies_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
execute if score @s zombie_villagers_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 21
scoreboard players operation @s result *= @s dummy
execute if score @s skeletons_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 22
scoreboard players operation @s result *= @s dummy
execute if score @s creepers_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 30
scoreboard players operation @s result *= @s dummy
execute if score @s husks_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
execute if score @s drowned_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 35
scoreboard players operation @s result *= @s dummy
execute if score @s strays_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 40
scoreboard players operation @s result *= @s dummy
execute if score @s phantoms_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 45
scoreboard players operation @s result *= @s dummy
execute if score @s pillagers_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 50
scoreboard players operation @s result *= @s dummy
execute if score @s cave_spiders_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 60
scoreboard players operation @s result *= @s dummy
execute if score @s guardians_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 70
scoreboard players operation @s result *= @s dummy
execute if score @s piglins_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
execute if score @s zombified_piglins_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 85
scoreboard players operation @s result *= @s dummy
execute if score @s hoglins_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 100
scoreboard players operation @s result *= @s dummy
execute if score @s vindicators_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
execute if score @s piglin_brutes_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 125
scoreboard players operation @s result *= @s dummy
execute if score @s ghasts_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 130
scoreboard players operation @s result *= @s dummy
execute if score @s endermen_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 135
scoreboard players operation @s result *= @s dummy
execute if score @s witches_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 150
scoreboard players operation @s result *= @s dummy
execute if score @s blazes_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 175
scoreboard players operation @s result *= @s dummy
execute if score @s vexes matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 200
scoreboard players operation @s result *= @s dummy
execute if score @s wither_skeletons_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 350
scoreboard players operation @s result *= @s dummy
execute if score @s evokers_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 400
scoreboard players operation @s result *= @s dummy
execute if score @s iron_golems_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 750
scoreboard players operation @s result *= @s dummy
execute if score @s ravagers_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 5000
scoreboard players operation @s result *= @s dummy
execute if score @s withers_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 5500
scoreboard players operation @s result *= @s dummy
execute if score @s ender_dragons_killed matches 1.. run scoreboard players operation @s combat_experience += @s result 
scoreboard players operation @s result /= @s dummy



execute if score @s combat_experience >= @s combat_experience_needed run function crafting_template:combat/levelup_combat

scoreboard players operation @s combat_experience -= @s last_combat_experience
scoreboard players operation @s combat_experience_difference = @s combat_experience
scoreboard players operation @s combat_experience += @s last_combat_experience
#execute if score @s combat_experience_difference matches 1.. run function crafting_template:combat/combat_bossbar
#execute if score @s tick = @s old_tick run bossbar set combat:combat visible false
execute unless score @s combat_experience_difference matches 0 run title @s actionbar [{"text":"Combat: +","color":"dark_red"},{"score":{"name":"@s","objective":"combat_experience_difference"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"combat_experience"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"@s","objective":"combat_experience_needed"},"color":"yellow"},{"text":")","color":"yellow"},{"text":" Level: ","color":"dark_red"},{"score":{"name":"@s","objective":"combat_level"},"color":"yellow"}]

execute unless score @s combat_experience >= @s combat_experience_needed run scoreboard players operation @s last_combat_experience = @s combat_experience
execute if score @s combat_experience >= @s combat_experience_needed run scoreboard players operation @s last_combat_experience = @s combat_experience_needed

#skills
execute if score @s dropped_wood_sword matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s dropped_stone_sword matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s dropped_iron_sword matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s dropped_diamond_sword matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s dropped_netherite_sword matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s dropped_bow matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s dropped_trident matches 1.. run scoreboard players set @s dropped_weapon 1
execute if score @s shifting matches 1.. if score @s dropped_weapon matches 1.. run function crafting_template:skills/combat_skills/fireball




function crafting_template:combat/combat_scoreboard_reset

