# Clear weather
weather clear 1800

# Reset night skipping
scoreboard players set MultiSleep.skipNight VAR 0
bossbar set multisleep.main visible false

# Display feedback
title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] times 5 50 5
title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] title ""
title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] subtitle {"text":"Nuit passée","color":"green"}
