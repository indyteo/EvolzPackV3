# Check enter / leave bed
execute as @a[tag=!MultiSleep.sleep,scores={MultiSleep.enter=1..}] run function evolzpack:multisleep/enter_bed
execute as @a[tag=MultiSleep.sleep,scores={MultiSleep.leave=1..}] run function evolzpack:multisleep/leave_bed

# Handle night skipping
execute if score MultiSleep.skipNight VAR matches 1 run time add 79

# Display sleeping players
execute if entity @a[tag=MultiSleep.sleep] if score Time VAR matches 12541..23458 run title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] actionbar [{"text":"Couchés : ","color":"gray"},{"selector":"@a[tag=MultiSleep.sleep,nbt={Dimension:\"minecraft:overworld\"},team=!Afk.main]","color":"green"},{"text":" | Réveillés : ","color":"gray"},{"selector":"@a[tag=!MultiSleep.sleep,nbt={Dimension:\"minecraft:overworld\"},team=!Afk.main]","color":"red"}]

# Timed functions
execute if score oldTime VAR matches 12541..23458 unless score Time VAR matches 12541..23458 run function evolzpack:multisleep/day
execute unless score oldTime VAR matches 12541..23458 if score Time VAR matches 12541..23458 run function evolzpack:multisleep/night

scoreboard players operation oldTime VAR = Time VAR
