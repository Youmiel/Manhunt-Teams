execute as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items set value []

replaceitem entity @e[type=minecraft:chest_minecart,tag=ManhuntPanel] container.10 minecraft:golden_hoe{ManhuntTeams:1b,display:{Name:'["§e和平"]'}}
replaceitem entity @e[type=minecraft:chest_minecart,tag=ManhuntPanel] container.11 minecraft:wooden_sword{ManhuntTeams:1b,display:{Name:'["§f简单"]'}}
replaceitem entity @e[type=minecraft:chest_minecart,tag=ManhuntPanel] container.12 minecraft:iron_sword{ManhuntTeams:1b,display:{Name:'["§9普通"]'}}
replaceitem entity @e[type=minecraft:chest_minecart,tag=ManhuntPanel] container.13 minecraft:netherite_sword{ManhuntTeams:1b,display:{Name:'["§c困难"]'}}
replaceitem entity @e[type=minecraft:chest_minecart,tag=ManhuntPanel] container.15 minecraft:light_blue_banner{ManhuntTeams:1b,display:{Name:'["§e随机队伍: §c关闭"]'}}
replaceitem entity @e[type=minecraft:chest_minecart,tag=ManhuntPanel] container.16 minecraft:ender_pearl{ManhuntTeams:1b,display:{Name:'["§e随机传送: §c关闭"]'}}

execute if score ~difficulty MT_var matches 0 as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items[{Slot:10b}].tag merge value {Enchantments:[{id:"minecraft:vanish_curse",lvl:1b}],HiddenValue:1}
execute if score ~difficulty MT_var matches 1 as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items[{Slot:11b}].tag merge value {Enchantments:[{id:"minecraft:vanish_curse",lvl:1b}],HiddenValue:1}
execute if score ~difficulty MT_var matches 2 as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items[{Slot:12b}].tag merge value {Enchantments:[{id:"minecraft:vanish_curse",lvl:1b}],HiddenValue:1}
execute if score ~difficulty MT_var matches 3 as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items[{Slot:13b}].tag merge value {Enchantments:[{id:"minecraft:vanish_curse",lvl:1b}],HiddenValue:1}
execute if score ~randomTeams MT_var matches 1 as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items[{Slot:15b}].tag merge value {Enchantments:[{id:"minecraft:vanish_curse",lvl:1b}],HiddenValue:1,display:{Name:'["§e随机队伍: §9开启"]'}}
execute if score ~randomTp MT_var matches 1 as @e[type=minecraft:chest_minecart,tag=ManhuntPanel] run data modify entity @s Items[{Slot:16b}].tag merge value {Enchantments:[{id:"minecraft:vanish_curse",lvl:1b}],HiddenValue:1,display:{Name:'["§e随机传送: §9开启"]'}}