scoreboard players add ~randomTp MT_var 1
execute if score ~randomTp MT_var matches 2.. run scoreboard players set ~randomTp MT_var 0 

execute if score ~randomTp MT_var matches 1 run tellraw @a ["§e随机传送: §9开启"]
execute if score ~randomTp MT_var matches 0 run tellraw @a ["§e随机传送: §c关闭"]

#scoreboard players reset @s MT_randomTp