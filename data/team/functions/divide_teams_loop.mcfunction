execute if score ~id MT_teamId < ~teamNum MT_var as @r[gamemode=!spectator,scores={MT_teamId=0}] store result score @s MT_teamId run scoreboard players add ~id MT_teamId 1
execute if score ~id MT_teamId >= ~teamNum MT_var as @p[gamemode=!spectator,scores={MT_teamId=0}] run scoreboard players set ~id MT_teamId 0
execute as @p[gamemode=!spectator,scores={MT_teamId=0}] run function team:divide_teams_loop
