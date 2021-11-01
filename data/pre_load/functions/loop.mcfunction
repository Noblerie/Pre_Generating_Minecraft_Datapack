# Controls everything main loop

schedule function pre_load:loop 1t
execute as @a[scores={pre_states=-2..}] run title @s actionbar ["",{"text":"X = ","color":"blue"},{"score":{"name":"@s","objective":"pre_x"},"color":"blue"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Z =","color":"dark_red"},{"score":{"name":"@s","objective":"pre_z"},"color":"dark_red"}]
execute as @a[scores={pre_states=-1}] run schedule function pre_load:pre_states0 1t
execute as @a[scores={pre_states=-1}] run schedule function pre_load:pre_states1 10s
execute as @a[scores={pre_states=-1}] run schedule function pre_load:pre_states2 15s
execute as @a[scores={pre_states=-1}] run schedule function pre_load:pre_states3 20s
execute as @a[scores={pre_states=-1}] run schedule function pre_load:pre_states4 25s
scoreboard players set @a[scores={pre_states=-1}] pre_states 0