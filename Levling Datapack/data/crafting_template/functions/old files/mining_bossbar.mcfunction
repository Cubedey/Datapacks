
#bossbar set mining:mining name [{"text":"Mining: +","color":"dark_aqua"},{"score":{"name":"@s","objective":"mining_experience_difference"},"color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"mining_experience"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"mining_experience_needed"},"color":"dark_aqua"},{"text":") Level: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"mining_level"},"color":"dark_aqua"}]
#execute store result bossbar mining:mining value run scoreboard players get @s mining_experience

#bossbar set mining:mining visible true
#bossbar set combat:combat visible false
#bossbar set foraging:foraging visible false
#bossbar set farming:farming visible false

#scoreboard players operation @s old_tick = @s tick
#scoreboard players add @s old_tick 60


