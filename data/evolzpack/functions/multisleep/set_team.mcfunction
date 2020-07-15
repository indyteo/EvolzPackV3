execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run team leave @s
execute unless score Time VAR matches 12541..23458 run team leave @s
execute if score Time VAR matches 12541..23458 if entity @s[tag=MultiSleep.sleep,nbt={Dimension:"minecraft:overworld"}] run team join MultiSleep.sleep @s
execute if score Time VAR matches 12541..23458 if entity @s[tag=!MultiSleep.sleep,nbt={Dimension:"minecraft:overworld"}] run team join MultiSleep.awake @s
