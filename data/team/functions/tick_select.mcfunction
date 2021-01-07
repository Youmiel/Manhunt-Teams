replaceitem entity @a[gamemode=!spectator] hotbar.0 minecraft:red_concrete{ManhuntTeams:1b,display:{Name:'{"text":"红队","italic":false}',Lore:['["副手手持时生效"]']}}
replaceitem entity @a[gamemode=!spectator] hotbar.1 minecraft:yellow_concrete{ManhuntTeams:1b,HideFlags:1,display:{Name:'{"text":"黄队","italic":false}',Lore:['["副手手持时生效"]']}}
replaceitem entity @a[gamemode=!spectator] hotbar.2 minecraft:light_blue_concrete{ManhuntTeams:1b,HideFlags:1,display:{Name:'{"text":"蓝队","italic":false}',Lore:['["副手手持时生效"]']}}
replaceitem entity @a[gamemode=!spectator] hotbar.3 minecraft:green_concrete{ManhuntTeams:1b,HideFlags:1,display:{Name:'{"text":"绿队","italic":false}',Lore:['["副手手持时生效"]']}}
replaceitem entity @a[gamemode=!spectator] hotbar.4 minecraft:light_gray_concrete{ManhuntTeams:1b,HideFlags:1,display:{Name:'{"text":"灰队","italic":false}',Lore:['["副手手持时生效"]']}}
replaceitem entity @a[gamemode=!spectator] hotbar.5 minecraft:blue_concrete{ManhuntTeams:1b,HideFlags:1,display:{Name:'{"text":"深蓝","italic":false}',Lore:['["副手手持时生效"]']}}

execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete",tag:{ManhuntTeams:1b}}]}] run team join MT_1 @s 
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_concrete",tag:{ManhuntTeams:1b}}]}] run team join MT_2 @s 
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_concrete",tag:{ManhuntTeams:1b}}]}] run team join MT_3 @s 
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:green_concrete",tag:{ManhuntTeams:1b}}]}] run team join MT_4 @s 
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:light_gray_concrete",tag:{ManhuntTeams:1b}}]}] run team join MT_5 @s 
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_concrete",tag:{ManhuntTeams:1b}}]}] run team join MT_6 @s 
