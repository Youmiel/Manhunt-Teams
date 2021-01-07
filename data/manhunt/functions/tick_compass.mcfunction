kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass",tag:{ManhuntTeams:1b}}}]
execute as @a[gamemode=!spectator] at @s run function manhunt:sync_compass_single
scoreboard players enable @a[gamemode=!spectator] MT_tracking
