tag @s add GetPos
setblock ~ 255 ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:compass",Count:1b,tag:{ManhuntTeams:1b,LodestoneTracked:0b,LodestonePos:{X:0,Y:128,Z:0},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}],HideFlags:1}}]}
data modify block ~ 255 ~ Items[{id:"minecraft:compass"}].tag.LodestoneDimension set from entity @s Dimension
data modify block ~ 255 ~ Items[{id:"minecraft:compass"}].tag.LodestonePos.X set from entity @s Pos[0]
data modify block ~ 255 ~ Items[{id:"minecraft:compass"}].tag.LodestonePos.Y set from entity @s Pos[1]
data modify block ~ 255 ~ Items[{id:"minecraft:compass"}].tag.LodestonePos.Z set from entity @s Pos[2]
#execute as @a[gamemode=!spectator,scores={MT_tracking=1..},distance=0..] if score @s MT_tracking = @p[gamemode=!spectator,tag=GetPos] MT_playerId run clear @a minecraft:compass{ManhuntTeams:1b}
execute as @a[gamemode=!spectator,scores={MT_tracking=1..},distance=0..] if score @s MT_tracking = @p[gamemode=!spectator,tag=GetPos] MT_playerId run loot replace entity @s hotbar.8 1 mine ~ 255 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
execute as @a[gamemode=!spectator,scores={MT_tracking=1..,HT_hintTime=-1},distance=0..] if score @s MT_tracking = @p[gamemode=!spectator,tag=GetPos] MT_playerId run title @s actionbar {"text":"正在跟踪","extra":[{"selector":"@p[tag=GetPos]"}]}
setblock ~ 255 ~ air
tag @s remove GetPos

