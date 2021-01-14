#scoreboard objectives add MT_difficulty trigger
#scoreboard objectives add MT_randomTeams trigger
#scoreboard objectives add MT_randomTp trigger
scoreboard objectives add MT_teamNum trigger
scoreboard objectives add MT_tracking trigger
#scoreboard objectives add MT_help trigger
scoreboard objectives add MT_leave trigger
scoreboard objectives add MT_teamId dummy
scoreboard objectives add MT_playerId dummy
scoreboard objectives add MT_prepared dummy
scoreboard objectives add MT_var dummy 

#something should be moved to team:load

scoreboard objectives setdisplay list MT_prepared
scoreboard players set ~finishPrepare MT_var 0
scoreboard players set ~randomTeams MT_var 0
scoreboard players set ~randomTp MT_var 0
scoreboard players set ~teamNum MT_var 3
scoreboard players set ~difficulty MT_var 2
scoreboard players set ~setDifficulty MT_var 2

time set 0

function manhunt:control_panel/load
function manhunt:hint/load
function team:create_teams
tellraw @a ["[Manhunt - Teams]使用§e/trigger MT_help§f查看帮助\n§11§22§33§44§55§66§77§88§99§aa§bb§cc§dd§ee§ff§gg§hh§ii§jj§kk§ll§mm§nn§oo§pp§qq§rr§ss§tt§uu§vv§ww§xx§yy§zz"]

schedule function manhunt:tick 20t replace
