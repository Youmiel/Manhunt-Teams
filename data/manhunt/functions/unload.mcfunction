scoreboard objectives remove MT_difficulty
scoreboard objectives remove MT_leave
scoreboard objectives remove MT_playerId
scoreboard objectives remove MT_prepared
scoreboard objectives remove MT_randomTeams
scoreboard objectives remove MT_randomTp
scoreboard objectives remove MT_teamId
scoreboard objectives remove MT_teamNum
scoreboard objectives remove MT_tracking
#scoreboard objectives remove MT_help
scoreboard objectives remove MT_var
function manhunt:hint/unload

function team:remove_teams
clear @a minecraft:compass{ManhuntTeams:1b}

schedule clear manhunt:tick
datapack disable "file/Manhunt-Teams"
