
bossbar set farming:farming name [{"text":"Farming: +","color":"dark_green"},{"score":{"name":"@s","objective":"farming_experience_difference"},"color":"dark_green"},{"text":" (","color":"dark_green"},{"score":{"name":"@s","objective":"farming_experience"},"color":"dark_green"},{"text":"/","color":"dark_green"},{"score":{"name":"@s","objective":"farming_experience_needed"},"color":"dark_green"},{"text":") Level: ","color":"dark_green"},{"score":{"name":"@s","objective":"farming_level"},"color":"dark_green"}]
execute store result bossbar farming:farming value run scoreboard players get @s farming_experience

bossbar set farming:farming visible true
bossbar set combat:combat visible false
bossbar set mining:mining visible false
bossbar set foraging:foraging visible false

scoreboard players operation @s old_tick = @s tick
scoreboard players add @s old_tick 60


