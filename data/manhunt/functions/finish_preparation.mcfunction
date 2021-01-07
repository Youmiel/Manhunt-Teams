kill @e[type=minecraft:chest_minecart,tag=ManhuntPanel] 

function manhunt:allocate_player_id
execute if score ~randomTeams MT_var matches 1 run function team:divide_teams
execute if score ~randomTp MT_var matches 1 in minecraft:overworld run spreadplayers ~ ~ 64 256 true @a[gamemode=!spectator]
scoreboard objectives setdisplay list MT_playerId
scoreboard players set @a MT_tracking 0
gamerule doDaylightCycle true
gamemode survival @a
clear @a

execute if score ~difficulty MT_var matches 0 run difficulty peaceful
execute if score ~difficulty MT_var matches 1 run difficulty easy
execute if score ~difficulty MT_var matches 2 run difficulty normal
execute if score ~difficulty MT_var matches 3 run difficulty hard

#scoreboard players reset * MT_difficulty
#scoreboard players reset * MT_randomTeams
#scoreboard players reset * MT_randomTp
scoreboard players reset * MT_teamNum
#scoreboard players reset * MT_help

scoreboard players set ~finishPrepare MT_var 1