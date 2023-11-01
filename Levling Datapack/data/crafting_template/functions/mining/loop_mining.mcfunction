#bossbar set mining:mining players @a

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}}}] run function crafting_template:mining/mining_scoreboard_reset
scoreboard players set @s result 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:1s}]}}}] run scoreboard players add @s result 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:2s}]}}}] run scoreboard players add @s result 2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:3s}]}}}] run scoreboard players add @s result 3
#could be more efficent just only add onto result and multiply at end

scoreboard players set @s dummy 5
scoreboard players operation @s result *= @s dummy
execute if score @s coal_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_coal_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy


scoreboard players set @s dummy 7
scoreboard players operation @s result *= @s dummy
execute if score @s copper_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_copper_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 10
scoreboard players operation @s result *= @s dummy
execute if score @s nether_quartz_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 15
scoreboard players operation @s result *= @s dummy
execute if score @s iron_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_iron_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 20
scoreboard players operation @s result *= @s dummy
execute if score @s nether_gold_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 45
scoreboard players operation @s result *= @s dummy
execute if score @s aquastone_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_aquastone_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 55
scoreboard players operation @s result *= @s dummy
execute if score @s gold_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_gold_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 85
scoreboard players operation @s result *= @s dummy
execute if score @s lapis_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_lapis_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 100
scoreboard players operation @s result *= @s dummy
execute if score @s diamond_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_diamond_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 250
scoreboard players operation @s result *= @s dummy
execute if score @s emerald_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
execute if score @s deepslate_emerald_ore_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy

scoreboard players set @s dummy 500
scoreboard players operation @s result *= @s dummy
execute if score @s ancient_debris_mined matches 1.. run scoreboard players operation @s mining_experience += @s result 
scoreboard players operation @s result /= @s dummy


execute if score @s mining_experience >= @s mining_experience_needed run function crafting_template:mining/levelup_mining

scoreboard players operation @s mining_experience -= @s last_mining_experience
scoreboard players operation @s mining_experience_difference = @s mining_experience
scoreboard players operation @s mining_experience += @s last_mining_experience
#execute if score @s mining_experience_difference matches 1.. run function crafting_template:mining/mining_bossbar
#execute if score @s tick = @s old_tick run bossbar set mining:mining visible false
execute unless score @s mining_experience_difference matches 0 run title @s actionbar [{"text":"Mining: +","color":"dark_aqua"},{"score":{"name":"@s","objective":"mining_experience_difference"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"mining_experience"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"@s","objective":"mining_experience_needed"},"color":"yellow"},{"text":")","color":"yellow"},{"text":" Level: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mining_level"},"color":"yellow"}]

execute unless score @s mining_experience >= @s mining_experience_needed run scoreboard players operation @s last_mining_experience = @s mining_experience
execute if score @s mining_experience >= @s mining_experience_needed run scoreboard players operation @s last_mining_experience = @s mining_experience_needed


function crafting_template:mining/mining_scoreboard_reset
