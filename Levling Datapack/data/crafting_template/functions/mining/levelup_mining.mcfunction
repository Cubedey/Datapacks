scoreboard players operation @s mining_experience -= @s mining_experience_needed
scoreboard players operation @s last_mining_experience -= @s mining_experience_needed

scoreboard players add @s mining_level 1
execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 1
execute as @a at @s run scoreboard players operation @s exponent = @s mining_level
execute as @a at @s run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s mining_experience_needed = @s result

#execute store result bossbar mining:mining max run scoreboard players get @s mining_experience_needed
scoreboard players set @s dummy -1
scoreboard players operation @s dummy += @s mining_level 
tellraw @s {"text":"---------------------------------------------","color":"yellow","bold":true}
tellraw @s [{"text":""}]

function crafting_template:summon_special_pig
#8:30-10:48 +6:30-
tellraw @s [{"text":"  MINING HAS LEVELED UP ","color":"dark_aqua","bold":true},{"bold":false,"nbt":"Tags","entity":"@e[type=pig,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest]","interpret": true,"color":"dark_gray"},{"bold":false,"text":"->","color":"dark_aqua"},{"bold":false,"nbt":"Tags","entity":"@e[type=cow,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest]","interpret": true,"color":"yellow"}]
gamerule doMobLoot false
kill @e[nbt={NoGravity:1b}]
gamerule doMobLoot true
tellraw @s [{"text":""}]


tellraw @s [{"text":"   Rewards: ","color":"dark_purple","bold":true}]
scoreboard players set @s dummy2 8
scoreboard players operation @s dummy *= @s dummy2
scoreboard players operation @s dummy2 *= @s mining_level


tellraw @s [{"text":"     • ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dummy"},"color":"yellow"},{"text":"->","color":"yellow"},{"score":{"name":"@s","objective":"dummy2"},"color":"yellow"},{"text":"% extra drops","color":"yellow"}]
tellraw @s [{"text":""}]

tellraw @s {"text":"---------------------------------------------","color":"yellow","bold":true}