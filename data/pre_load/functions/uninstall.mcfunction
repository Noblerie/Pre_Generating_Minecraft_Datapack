# Removes all scores required by the datapack

schedule clear pre_load:loop

gamerule doWeatherCycle true
gamerule doDaylightCycle true

execute as @a[scores={pre_states=42}] run tp @s @e[limit=1,tag=tp_back,sort= arbitrary]
execute as @a[scores={pre_states=42}] run gamemode creative @s

scoreboard objectives remove pre_states
scoreboard objectives remove pre_x
scoreboard objectives remove pre_z

tp @s @e[limit=1,tag=tp_back,sort= arbitrary]
kill @e[tag=tp_back]