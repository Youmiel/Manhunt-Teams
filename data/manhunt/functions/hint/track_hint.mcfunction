execute as @s[scores={HT_hintTarget=1}] store result score @s HT_hintDistance run locate village
execute as @s[scores={HT_hintTarget=2}] store result score @s HT_hintDistance run locate desert_pyramid
execute as @s[scores={HT_hintTarget=3}] store result score @s HT_hintDistance run locate buried_treasure
execute as @s[scores={HT_hintTarget=4}] store result score @s HT_hintDistance run locate ocean_ruin
execute as @s[scores={HT_hintTarget=5}] store result score @s HT_hintDistance run locate ruined_portal
execute as @s[scores={HT_hintTarget=6}] store result score @s HT_hintDistance run locate shipwreck
execute as @s[scores={HT_hintTarget=7}] store result score @s HT_hintDistance run locate stronghold
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run execute store result score @s HT_hintDistance run locate fortress
