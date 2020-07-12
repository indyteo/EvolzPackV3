# Start night skipping
scoreboard players set MultiSleep.skipNight VAR 1

# Display feedback
title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] times 5 50 5
title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] title ""
title @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] subtitle {"text":"Passage de la nuit...","color":"gray"}
