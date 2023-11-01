particle happy_villager ~ ~ ~ 0 0 0 1 10
execute if block ~ ~ ~ #crafting_template:chop run fill ~ ~ ~ ~ ~ ~ air destroy
execute positioned ~ ~.5 ~ run function crafting_template:yonder/axeraycast_loopup

