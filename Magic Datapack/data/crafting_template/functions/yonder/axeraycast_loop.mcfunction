particle enchanted_hit ~ ~ ~ 0 0 0 0 1
execute if block ~ ~ ~ #crafting_template:chop run function crafting_template:yonder/axeraycast_loopup
execute if block ~ ~ ~ air positioned ^ ^ ^.5 run function crafting_template:yonder/axeraycast_loop
