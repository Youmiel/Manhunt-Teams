execute as @a[gamemode=!spectator,scores={HT_hint=1..}] at @s run function manhunt:hint/remove_item
scoreboard players enable @a HT_hint 
execute as @a[gamemode=!spectator,scores={HT_hintTime=0..}] at @s run function manhunt:hint/track_hint
function manhunt:hint/display_hint
scoreboard players remove @a[scores={HT_hintTime=0..}] HT_hintTime 1
