kill @e[type=minecraft:chest_minecart,tag=ManhuntPanel] 
kill @e[type=minecraft:item,nbt={Item:{tag:{ManhuntTeams:1b}}}]

summon minecraft:chest_minecart ~ ~ ~ {Invulnerable:1b,CustomName:'["控制面板"]',Tags:["ManhuntPanel"]}
execute as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run function manhunt:control_panel/refresh_item