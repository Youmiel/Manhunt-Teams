#scoreboard players operation ~difficulty MT_var = @s MT_difficulty
scoreboard players operation ~difficulty MT_var = ~setDifficulty MT_var
execute if score ~difficulty MT_var matches 0 run tellraw @a ["§e难度被设置为: §e和平"]
execute if score ~difficulty MT_var matches 1 run tellraw @a ["§e难度被设置为: §f简单"]
execute if score ~difficulty MT_var matches 2 run tellraw @a ["§e难度被设置为: §9普通"]
execute if score ~difficulty MT_var matches 3 run tellraw @a ["§e难度被设置为: §c困难"]

#scoreboard players set @s MT_difficulty -1