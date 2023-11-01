scoreboard objectives add coal_ore_mined minecraft.mined:minecraft.coal_ore
scoreboard objectives add deepslate_coal_ore_mined minecraft.mined:minecraft.deepslate_coal_ore

scoreboard objectives add copper_ore_mined minecraft.mined:minecraft.copper_ore
scoreboard objectives add deepslate_copper_ore_mined minecraft.mined:minecraft.deepslate_copper_ore

scoreboard objectives add nether_quartz_ore_mined minecraft.mined:minecraft.nether_quartz_ore

scoreboard objectives add iron_ore_mined minecraft.mined:minecraft.iron_ore
scoreboard objectives add deepslate_iron_ore_mined minecraft.mined:minecraft.deepslate_iron_ore

scoreboard objectives add nether_gold_ore_mined minecraft.mined:minecraft.nether_gold_ore

scoreboard objectives add redstone_ore_mined minecraft.mined:minecraft.redstone_ore
scoreboard objectives add deepslate_redstone_ore_mined minecraft.mined:minecraft.deepslate_redstone_ore

scoreboard objectives add gold_ore_mined minecraft.mined:minecraft.gold_ore
scoreboard objectives add deepslate_gold_ore_mined minecraft.mined:minecraft.deepslate_gold_ore

scoreboard objectives add lapis_ore_mined minecraft.mined:minecraft.lapis_ore
scoreboard objectives add deepslate_lapis_ore_mined minecraft.mined:minecraft.deepslate_lapis_ore

scoreboard objectives add diamond_ore_mined minecraft.mined:minecraft.diamond_ore
scoreboard objectives add deepslate_diamond_ore_mined minecraft.mined:minecraft.deepslate_diamond_ore

scoreboard objectives add emerald_ore_mined minecraft.mined:minecraft.emerald_ore
scoreboard objectives add deepslate_emerald_ore_mined minecraft.mined:minecraft.deepslate_emerald_ore

scoreboard objectives add ancient_debris_mined minecraft.mined:minecraft.ancient_debris

scoreboard objectives add mining_level dummy 1
scoreboard objectives add mining_experience dummy 1
scoreboard objectives add last_mining_experience dummy 1
scoreboard objectives add mining_experience_difference dummy 1
scoreboard objectives add mining_experience_needed dummy 1

#bossbar add mining:mining {"text":"Mining","color":"dark_aqua"}
#bossbar set mining:mining color blue
#bossbar set mining:mining players @a
#bossbar set mining:mining visible false

execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 0
execute as @a at @s run scoreboard players operation @s exponent = @s mining_level
execute as @a at @s if score @s exponent matches 2.. run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s mining_experience_needed = @s result

