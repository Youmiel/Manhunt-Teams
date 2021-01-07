execute if score ~finishPrepare MT_var matches 0 run function manhunt:tick_preparation
execute if score ~finishPrepare MT_var matches 0 if entity @p[gamemode=!spectator] unless entity @p[gamemode=!spectator,scores={MT_prepared=0}] run function manhunt:finish_preparation

execute unless score ~finish MT_var matches 0 run function manhunt:tick_compass
function manhunt:hint/tick

#scoreboard players enable @a MT_help
#execute as @a[scores={MT_help=1..}] run function manhunt:process_help
scoreboard players enable @a MT_leave
execute as @a[gamemode=!spectator,scores={MT_leave=1..}] run function manhunt:process_leave

schedule function manhunt:tick 20t replace
