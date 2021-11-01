# End pre_states


scoreboard players add @a[scores={pre_states=4}] pre_x 1
execute as @a[scores={pre_x=..23}] at @s run tp @s ~240 192 ~ 0 20
scoreboard players set @a[scores={pre_states=4}] pre_states -1
scoreboard players add @a[scores={pre_x=24}] pre_z 1
scoreboard players set @a[scores={pre_x=24}] pre_x 0
scoreboard players set @a[scores={pre_z=24}] pre_states 42
scoreboard players set @a[scores={pre_z=24}] pre_x 42
tellraw @a[scores={pre_z=24}] ["",{"text":"[Pre_load] ","color":"green"},{"text":"The pre-loading is done, you can uninstall me.","color":"white","clickEvent":{"action":"suggest_command","value":"/function pre_load:uninstall"}}]
scoreboard players set @a[scores={pre_z=24}] pre_z 42
execute as @a[scores={pre_x=24}] at @s run tp @s -2880 192 ~240 0 20