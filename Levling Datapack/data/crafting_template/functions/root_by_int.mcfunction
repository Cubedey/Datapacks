scoreboard players set @s dummy2 0
execute unless score @s times_run_inv = @s dummy2 run scoreboard players operation @s last_root_difference = @s dummy

scoreboard players add @s times_run_inv 1

scoreboard players operation @s base = @s times_run_inv
scoreboard players operation @s result = @s times_run_inv
scoreboard players set @s times_run 1
scoreboard players operation @s exponent = @s inverse_exponent
function crafting_template:exponentiate_by_int

scoreboard players operation @s dummy = @s root_num
scoreboard players operation @s dummy -= @s result
scoreboard players set @s dummy2 0
scoreboard players set @s dummy3 -1

execute if score @s dummy < @s dummy2 run scoreboard players operation @s dummy *= @s dummy3

##scoreboard players set @s bugdummy 0
##tellraw @s [{"score":{"name":"@s","objective":"root_num"}},{"text":" "},{"score":{"name":"@s","objective":"times_run_inv"}},{"text":" "},{"score":{"name":"@s","objective":"result"}}]


execute if score @s last_root_difference > @s dummy run function crafting_template:root_by_int

execute unless score @s last_root_difference > @s dummy run scoreboard players operation @s result = @s times_run_inv
execute unless score @s last_root_difference > @s dummy run scoreboard players set @s dummy2 1
execute unless score @s last_root_difference > @s dummy run scoreboard players operation @s result -= @s dummy2
execute unless score @s last_root_difference > @s dummy run scoreboard players set @s last_root_difference 2147483647