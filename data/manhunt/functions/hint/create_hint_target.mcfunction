summon minecraft:armor_stand ~ ~ ~ {Tags:["HT_Hint"],Invulnerable:1b,Invisible:1b}
execute as @e[type=minecraft:armor_stand,tag=HT_Hint,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot manhunt:random
execute store result score @s HT_hintTarget run data get entity @e[type=minecraft:armor_stand,tag=HT_Hint,limit=1,sort=nearest] ArmorItems[{id:"minecraft:jigsaw"}].Count
kill @e[type=minecraft:armor_stand,tag=HT_Hint]
scoreboard players set @s HT_hintTime 180
