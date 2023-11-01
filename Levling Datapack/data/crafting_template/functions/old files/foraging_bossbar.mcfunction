
bossbar set foraging:foraging name [{"text":"Foraging: +","color":"gold"},{"score":{"name":"@s","objective":"foraging_experience_difference"},"color":"gold"},{"text":" (","color":"gold"},{"score":{"name":"@s","objective":"foraging_experience"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"@s","objective":"foraging_experience_needed"},"color":"gold"},{"text":") Level: ","color":"gold"},{"score":{"name":"@s","objective":"foraging_level"},"color":"gold"}]
execute store result bossbar foraging:foraging value run scoreboard players get @s foraging_experience

bossbar set foraging:foraging visible true
bossbar set combat:combat visible false
bossbar set mining:mining visible false
bossbar set farming:farming visible false

scoreboard players operation @s old_tick = @s tick
scoreboard players add @s old_tick 60


