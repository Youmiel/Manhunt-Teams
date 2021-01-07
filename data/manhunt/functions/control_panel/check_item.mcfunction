execute unless entity @s[nbt={Items:[{Slot:10b,id:"minecraft:golden_hoe",tag:{ManhuntTeams:1b}}]}] run scoreboard players set ~setDifficulty MT_var 0
execute unless entity @s[nbt={Items:[{Slot:11b,id:"minecraft:wooden_sword",tag:{ManhuntTeams:1b}}]}] run scoreboard players set ~setDifficulty MT_var 1
execute unless entity @s[nbt={Items:[{Slot:12b,id:"minecraft:iron_sword",tag:{ManhuntTeams:1b}}]}] run scoreboard players set ~setDifficulty MT_var 2
execute unless entity @s[nbt={Items:[{Slot:13b,id:"minecraft:netherite_sword",tag:{ManhuntTeams:1b}}]}] run scoreboard players set ~setDifficulty MT_var 3
execute unless score ~setDifficulty MT_var = ~difficulty MT_var run function manhunt:process_set_diff
execute unless entity @s[nbt={Items:[{Slot:15b,id:"minecraft:light_blue_banner",tag:{ManhuntTeams:1b}}]}] run function team:process_set_ranteams
execute unless entity @s[nbt={Items:[{Slot:16b,id:"minecraft:ender_pearl",tag:{ManhuntTeams:1b}}]}] run function manhunt:process_set_tp	