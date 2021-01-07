execute as @p[scores={MT_teamNum=2..}] run function team:process_set_team_num
scoreboard players reset @a MT_teamNum
scoreboard players enable @a MT_teamNum

execute as @p[scores={MT_randomTeams=1..}] run function team:process_set_ranteams
scoreboard players enable @a MT_randomTeams

execute if entity @p[gamemode=!spectator] if score ~randomTeams MT_var matches 0 run function team:tick_select
execute if entity @p[gamemode=!spectator] if score ~randomTeams MT_var matches 1 run function team:clear_items
