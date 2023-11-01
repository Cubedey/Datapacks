scoreboard objectives add xp xp
scoreboard objectives add last_xp dummy 
scoreboard objectives add xpedyet dummy
scoreboard players set @a xp 0
scoreboard players set @a last_xp 0

scoreboard players set @a xpedyet 0

execute as @a at @s run xp add @s 1



scoreboard objectives add enchanting_level dummy 
scoreboard objectives add enchanting_experience dummy 
scoreboard objectives add last_enchanting_experience dummy 
scoreboard objectives add enchanting_experience_difference dummy 
scoreboard objectives add enchanting_experience_needed dummy 

#bossbar add enchanting:enchanting {"text":"enchanting","color":"green"}
#bossbar set enchanting:enchanting color red
#bossbar set enchanting:enchanting visible false




execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 0
execute as @a at @s run scoreboard players operation @s exponent = @s enchanting_level
execute as @a at @s if score @s exponent matches 2.. run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s enchanting_experience_needed = @s result

