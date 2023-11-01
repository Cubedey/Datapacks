
bossbar set enchanting:enchanting name [{"text":"enchanting: +","color":"blue"},{"score":{"name":"@s","objective":"enchanting_experience_difference"},"color":"blue"},{"text":" (","color":"blue"},{"score":{"name":"@s","objective":"enchanting_experience"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"enchanting_experience_needed"},"color":"blue"},{"text":") Level: ","color":"blue"},{"score":{"name":"@s","objective":"enchanting_level"},"color":"blue"}]
execute store result bossbar enchanting:enchanting value run scoreboard players get @s enchanting_experience

function enchanting_bossbar
bossbar set enchanting:enchanting visible true


scoreboard players operation @s old_tick = @s tick
scoreboard players add @s old_tick 60


