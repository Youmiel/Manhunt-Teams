scoreboard players add ~randomTeams MT_var 1
execute if score ~randomTeams MT_var matches 2.. run scoreboard players set ~randomTeams MT_var 0 

execute if score ~randomTeams MT_var matches 1 run tellraw @a ["§e随机队伍: §9开启"," ∷ ",{"text":"§r点击设置队伍数量","underlined":true,"clickEvent":{"action":"suggest_command","value":"/trigger MT_teamNum set "}}]
execute if score ~randomTeams MT_var matches 0 run tellraw @a ["§e随机队伍: §c关闭"]

#scoreboard players reset @s MT_randomTeams
