scoreboard players operation @s combat_experience -= @s combat_experience_needed
scoreboard players operation @s last_combat_experience -= @s combat_experience_needed

scoreboard players add @s combat_level 1
execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 0
execute as @a at @s run scoreboard players operation @s exponent = @s combat_level
execute as @a at @s run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s combat_experience_needed = @s result

#execute store result bossbar combat:combat max run scoreboard players get @s combat_experience_needed
scoreboard players set @s dummy -1
scoreboard players operation @s dummy += @s combat_level 
tellraw @s {"text":"---------------------------------------------","color":"yellow","bold":true}
tellraw @s [{"text":""}]

function crafting_template:summon_special_pig
#8:30-10:48 +6:30-7:05
tellraw @s [{"text":"  COMBAT HAS LEVELED UP ","color":"dark_red","bold":true},{"bold":false,"nbt":"Tags","entity":"@e[type=pig,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest]","interpret": true,"color":"dark_gray"},{"bold":false,"text":"->","color":"dark_red"},{"bold":false,"nbt":"Tags","entity":"@e[type=cow,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest]","interpret": true,"color":"yellow"}]
gamerule doMobLoot false
kill @e[nbt={NoGravity:1b}]
gamerule doMobLoot true
tellraw @s [{"text":""}]

tellraw @s [{"text":"   Rewards: ","color":"dark_purple","bold":true}]
scoreboard players set @s dummy2 8
scoreboard players operation @s dummy *= @s dummy2
scoreboard players operation @s dummy2 *= @s combat_level


tellraw @s [{"text":"     • ","color":"dark_red"},{"score":{"name":"@s","objective":"dummy"},"color":"yellow"},{"text":"->","color":"yellow"},{"score":{"name":"@s","objective":"dummy2"},"color":"yellow"},{"text":"% extra drops","color":"yellow"}]
tellraw @s [{"text":""}]

tellraw @s {"text":"---------------------------------------------","color":"yellow","bold":true}