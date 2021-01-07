scoreboard players set @s HT_hint 0
execute as @s if score @s HT_hint matches 0 store success score @s HT_hint run clear @s minecraft:diamond 1
execute as @s if score @s HT_hint matches 0 store success score @s HT_hint run clear @s minecraft:golden_apple 1
execute as @s if score @s HT_hint matches 0 store success score @s HT_hint run clear @s minecraft:emerald_block 1
execute as @s if score @s HT_hint matches 0 run tellraw @s ["§c你没有足够的资源"]
execute as @s at @s if score @s HT_hint matches 1.. run function manhunt:hint/create_hint_target

scoreboard players reset @s HT_hint 
scoreboard players enable @s HT_hint 
