# Clear weather
weather clear

# Reset night skipping
scoreboard players set MultiSleep.skipNight VAR 0
bossbar set multisleep.main visible false

# Display feedback
title @a[nbt={Dimension:"minecraft:overworld"}] times 5 50 5
title @a[nbt={Dimension:"minecraft:overworld"}] title ""
title @a[nbt={Dimension:"minecraft:overworld"}] subtitle {"text":"Nuit passée","color":"green"}
