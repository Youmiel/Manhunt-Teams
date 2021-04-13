kill @e[type=minecraft:chest_minecart,tag=ManhuntPanel] 
kill @e[type=minecraft:armor_stand,tag=ManhuntPanel]
kill @e[type=minecraft:item,nbt={Item:{tag:{ManhuntTeams:1b}}}]

summon minecraft:armor_stand ~ ~-1.4 ~ {Invisible:1b,NoGravity:1b,Invulunerable:1b,Tags:["ManhuntPanel"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,CustomName:'["控制面板"]',Tags:["ManhuntPanel"],CustomNameVisible:1b,Glowing:1b}]}
execute as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run function manhunt:control_panel/refresh_item
