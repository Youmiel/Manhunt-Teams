scoreboard players set ~id MT_playerId 0
scoreboard players set @a MT_playerId 0
execute as @a[gamemode=!spectator,scores={MT_playerId=0}] store result score @s MT_playerId run scoreboard players add ~id MT_playerId 1
