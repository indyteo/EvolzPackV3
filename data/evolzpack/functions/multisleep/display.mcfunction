# Define visibility to overworld players
bossbar set multisleep.main players @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main]

# Count total sleeping players
scoreboard players set MultiSleep.totalSleeping VAR 0
execute as @a[tag=MultiSleep.sleep] run scoreboard players add MultiSleep.totalSleeping VAR 1

# Manage bossbar fill
execute store result bossbar multisleep.main max run scoreboard players get MultiSleep.overworldPlayerCount VAR
execute store result bossbar multisleep.main value run scoreboard players get MultiSleep.totalSleeping VAR

# Set bossbar color
execute if score MultiSleep.sleepingPercent VAR >= SLEEP_PERCENT CONST run bossbar set multisleep.main color green
execute unless score MultiSleep.sleepingPercent VAR >= SLEEP_PERCENT CONST run bossbar set multisleep.main color red

# Display text
execute if score MultiSleep.sleepingPercent VAR >= SLEEP_PERCENT CONST run bossbar set multisleep.main name [{"text":"Couchés : ","color":"gray"},{"score":{"name":"MultiSleep.totalSleeping","objective":"VAR"},"color":"aqua"},{"text":" / ","color":"gray"},{"score":{"name":"MultiSleep.overworldPlayerCount","objective":"VAR"},"color":"dark_aqua"},{"text":" (","color":"gray"},{"score":{"name":"MultiSleep.sleepingPercent","objective":"VAR"},"color":"green"},{"text":" %) | Minimum : ","color":"gray"},{"score":{"name":"SLEEP_PERCENT","objective":"CONST"},"color":"dark_green"},{"text":" %","color":"gray"}]
execute unless score MultiSleep.sleepingPercent VAR >= SLEEP_PERCENT CONST run bossbar set multisleep.main name [{"text":"Couchés : ","color":"gray"},{"score":{"name":"MultiSleep.totalSleeping","objective":"VAR"},"color":"aqua"},{"text":" / ","color":"gray"},{"score":{"name":"MultiSleep.overworldPlayerCount","objective":"VAR"},"color":"dark_aqua"},{"text":" (","color":"gray"},{"score":{"name":"MultiSleep.sleepingPercent","objective":"VAR"},"color":"red"},{"text":" %) | Minimum : ","color":"gray"},{"score":{"name":"SLEEP_PERCENT","objective":"CONST"},"color":"dark_red"},{"text":" %","color":"gray"}]
