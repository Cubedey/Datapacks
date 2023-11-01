tellraw @a {"text":"Loaded Leveling Pack!"}
scoreboard players reset @a
function crafting_template:reset_numeral_tags
#general vars
scoreboard objectives add exponent dummy 
scoreboard objectives add base dummy 
scoreboard objectives add divisor dummy 
scoreboard objectives add times_run dummy 
scoreboard objectives add result dummy 




scoreboard objectives add ranfarming dummy

scoreboard objectives add inverse_exponent dummy 
scoreboard objectives add root_num dummy 
scoreboard objectives add inv_multiplier dummy 
scoreboard objectives add times_run_inv dummy 
scoreboard objectives add last_root_difference dummy 

scoreboard objectives add dummy dummy 
scoreboard objectives add dummy2 dummy 
scoreboard objectives add dummy3 dummy 

scoreboard objectives add count dummy 
scoreboard objectives add expaddedbase dummy 


scoreboard objectives add bugdummy dummy 

scoreboard objectives add deathCount deathCount 


scoreboard objectives add roman_numeral_num dummy 

scoreboard objectives add tick dummy 
scoreboard objectives add old_tick dummy 

scoreboard objectives add treefeller_x dummy 
scoreboard objectives add treefeller_y dummy 
scoreboard objectives add treefeller_z dummy 
scoreboard objectives add treefeller_x_max dummy 
scoreboard objectives add treefeller_y_max dummy 
scoreboard objectives add treefeller_z_max dummy 
scoreboard objectives add treefeller_x_max_reached dummy 
scoreboard objectives add treefeller_y_max_reached dummy 
scoreboard objectives add treefeller_z_max_reached dummy 

scoreboard objectives add bottom_reached dummy 
scoreboard objectives add shifting minecraft.custom:sneak_time 

scoreboard objectives add times_since_extra_mining dummy 
scoreboard objectives add times_since_extra_farming dummy 
scoreboard objectives add times_since_extra_combat dummy 
scoreboard objectives add times_since_extra_foraging dummy 
scoreboard objectives add times_since_extra_enchanting dummy 

scoreboard objectives add times_since dummy 
scoreboard objectives add amount_given dummy
scoreboard objectives add currentp_increase dummy





function crafting_template:mining/load_mining 
function crafting_template:farming/load_farming 
function crafting_template:combat/load_combat 
function crafting_template:foraging/load_foraging 
function crafting_template:enchanting/load_enchanting




