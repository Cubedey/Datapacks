scoreboard players operation @s farming_experience -= @s farming_experience_needed
scoreboard players operation @s last_farming_experience -= @s farming_experience_needed

scoreboard players add @s farming_level 1
scoreboard players set @s base 120
scoreboard players set @s result 100
scoreboard players set @s divisor 100
scoreboard players set @s times_run 0
scoreboard players operation @s exponent = @s farming_level
function crafting_template:exponentiate_by_int
scoreboard players operation @s farming_experience_needed = @s result

#execute store result bossbar farming:farming max run scoreboard players get @s farming_experience_needed
scoreboard players set @s dummy -1
scoreboard players operation @s dummy += @s farming_level 
tellraw @s {"text":"---------------------------------------------","color":"yellow","bold":true}
tellraw @s [{"text":""}]

function crafting_template:summon_special_pig
#8:30-10:48 +6:30-
tellraw @s [{"text":"  FARMING HAS LEVELED UP ","color":"dark_green","bold":true},{"bold":false,"nbt":"Tags","entity":"@e[type=pig,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest]","interpret": true,"color":"dark_gray"},{"bold":false,"text":"->","color":"dark_green"},{"bold":false,"nbt":"Tags","entity":"@e[type=cow,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest]","interpret": true,"color":"yellow"}]
gamerule doMobLoot false
kill @e[nbt={NoGravity:1b}]
gamerule doMobLoot true
tellraw @s [{"text":""}]

tellraw @s [{"text":"   Rewards: ","color":"dark_purple","bold":true}]
scoreboard players set @s dummy2 8
scoreboard players operation @s dummy *= @s dummy2
scoreboard players operation @s dummy2 *= @s farming_level


tellraw @s [{"text":"     • ","color":"dark_green"},{"score":{"name":"@s","objective":"dummy"},"color":"yellow"},{"text":"->","color":"yellow"},{"score":{"name":"@s","objective":"dummy2"},"color":"yellow"},{"text":"% extra drops","color":"yellow"}]
tellraw @s [{"text":""}]

tellraw @s {"text":"---------------------------------------------","color":"yellow","bold":true}