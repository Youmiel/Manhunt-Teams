gamemode spectator @s
tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":" §e离开了游戏, 进入旁观模式","bold":true}]}
scoreboard players reset @s MT_leave
