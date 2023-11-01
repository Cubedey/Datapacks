scoreboard players operation @s result *= @a base
scoreboard players operation @s result /= @a divisor
scoreboard players add @s times_run 1
execute if score @s exponent > @s times_run run function crafting_template:exponentiate_by_int 