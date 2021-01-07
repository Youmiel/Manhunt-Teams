execute as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run function manhunt:control_panel/tick

#scoreboard players enable @a[gamemode=!spectator] MT_prepared
scoreboard players set @a[gamemode=!spectator] MT_prepared 0

#execute as @a[scores={MT_randomTp=1..}] run function manhunt:process_set_tp
#scoreboard players reset @a MT_randomTp
#scoreboard players enable @a MT_randomTp

#execute as @a[scores={MT_difficulty=0..}] run function manhunt:process_set_diff
#scoreboard players reset @a MT_difficulty
#scoreboard players enable @a MT_difficulty

function manhunt:process_help
#replaceitem entity @a[gamemode=!spectator] hotbar.7 minecraft:book{ManhuntTeams:1b,Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}],HideFlags:1,display:{Name:'{"text":"使用帮助","italic":false}'}}
#execute as @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:book",tag:{ManhuntTeams:1b}}}] run tellraw @s ["[Manhunt - Teams]§f使用§e/trigger MT_help §f查看帮助"]

replaceitem entity @a[gamemode=!spectator] hotbar.8 minecraft:compass{ManhuntTeams:1b,Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}],HideFlags:1,display:{Name:'{"text":"准备","italic":false}',Lore:['["手持准备"]']}}
execute as @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:compass",tag:{ManhuntTeams:1b}}}] run scoreboard players set @s MT_prepared 1

function team:tick

effect give @a[gamemode=!spectator] minecraft:saturation 2 0 true
effect give @a[gamemode=!spectator] minecraft:resistance 2 4 true
difficulty peaceful
gamerule doDaylightCycle false
gamemode adventure @a[gamemode=!spectator] 
defaultgamemode survival
