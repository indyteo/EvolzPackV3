# Define default player sleeping status
execute as @a unless score @s MultiSleep.sleep matches 0..1 run scoreboard players set @s MultiSleep.sleep 0

# Check enter / leave bed
execute as @a if score @s MultiSleep.sleep matches 0 if score @s MultiSleep.enter matches 1.. run function evolzpack:multisleep/enter_bed
execute as @a if score @s MultiSleep.sleep matches 1 if score @s MultiSleep.leave matches 1.. run function evolzpack:multisleep/leave_bed

# Handle night skipping
execute if score MultiSleep.skipNight VAR matches 1 run time add 79
execute if score MultiSleep.skipNight VAR matches 1 unless score Time VAR matches 12541..23458 run function evolzpack:multisleep/end_of_night
execute unless score Time VAR matches 12541..23458 run bossbar set multisleep.main visible false

# Display sleeping players
execute unless score MultiSleep.totalSleeping VAR matches 0 if score Time VAR matches 12541..23458 run title @a[nbt={Dimension:"minecraft:overworld"}] actionbar [{"text":"Couchés : ","color":"gray"},{"selector":"@a[scores={MultiSleep.sleep=1},nbt={Dimension:\"minecraft:overworld\"}]","color":"green"},{"text":" | Réveillés : ","color":"gray"},{"selector":"@a[scores={MultiSleep.sleep=0},nbt={Dimension:\"minecraft:overworld\"}]","color":"red"}]
