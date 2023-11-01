
bossbar set combat:combat name [{"text":"Combat: +","color":"dark_red"},{"score":{"name":"@s","objective":"combat_experience_difference"},"color":"dark_red"},{"text":" (","color":"dark_red"},{"score":{"name":"@s","objective":"combat_experience"},"color":"dark_red"},{"text":"/","color":"dark_red"},{"score":{"name":"@s","objective":"combat_experience_needed"},"color":"dark_red"},{"text":") Level: ","color":"dark_red"},{"score":{"name":"@s","objective":"combat_level"},"color":"dark_red"}]
execute store result bossbar combat:combat value run scoreboard players get @s combat_experience

bossbar set combat:combat visible true
bossbar set farming:farming visible false
bossbar set mining:mining visible false
bossbar set foraging:foraging visible false

scoreboard players operation @s old_tick = @s tick
scoreboard players add @s old_tick 60


