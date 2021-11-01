# Watch South Chunks
scoreboard players set @a[scores={pre_states=-1}] pre_states 0
execute as @a[scores={pre_states=0}] at @s run tp @s ~ ~ ~ 0 20
scoreboard players add @a[scores={pre_states=0}] pre_states 1