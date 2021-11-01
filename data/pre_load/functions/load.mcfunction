# Creates all scores required by the datapack
# 5760 x 5760 (-2880 -2880 to 2880 2880)
# 24 x 24 = 576 executions 
# 20sec/executions = 3,2h
# 240 blocks
#

time set 0
gamerule doWeatherCycle false
gamerule doDaylightCycle false

scoreboard objectives add pre_x dummy
scoreboard objectives add pre_z dummy
scoreboard objectives add pre_states dummy

execute as @a run gamemode spectator @s
execute as @a at @s run summon minecraft:marker ~ ~0.5 ~ {Tags:["tp_back"]}
execute as @a run tp @s -2880 192 -2880 0 20
execute as @a run scoreboard players set @s pre_states -1
execute as @a run scoreboard players set @s pre_x 0
execute as @a run scoreboard players set @s pre_z 0

function pre_load:loop