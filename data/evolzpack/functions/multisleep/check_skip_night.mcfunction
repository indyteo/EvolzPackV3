# Revoke advancement in case of dimension change trigger
advancement revoke @s only evolzpack:special/multisleep/change_dimension

# Count overworld players
scoreboard players set MultiSleep.overworldPlayerCount VAR 0
execute as @a[nbt={Dimension:"minecraft:overworld"},team=!Afk.main] run scoreboard players add MultiSleep.overworldPlayerCount VAR 1

# Count total sleeping players
scoreboard players set MultiSleep.totalSleeping VAR 0
execute as @a[tag=MultiSleep.sleep] run scoreboard players add MultiSleep.totalSleeping VAR 1

# Calculate overworld sleeping player percent
scoreboard players operation MultiSleep.sleepingPercent VAR = MultiSleep.totalSleeping VAR
scoreboard players operation MultiSleep.sleepingPercent VAR *= 100 CONST
scoreboard players operation MultiSleep.sleepingPercent VAR /= MultiSleep.overworldPlayerCount VAR

# Update bossbar
function evolzpack:multisleep/display

# Skip or not night
execute if score MultiSleep.skipNight VAR matches 1 if score Time VAR matches 12541..23458 unless score MultiSleep.sleepingPercent VAR >= SLEEP_PERCENT CONST run function evolzpack:multisleep/dont_skip_night
execute if score MultiSleep.sleepingPercent VAR >= SLEEP_PERCENT CONST run function evolzpack:multisleep/skip_night

# Hide bossbar if everybody is awake
execute unless entity @a[tag=MultiSleep.sleep] run bossbar set multisleep.main visible false

# Update players team
execute if entity @a[tag=MultiSleep.sleep] as @a[team=!Afk.main] run function evolzpack:multisleep/set_team
execute unless entity @a[tag=MultiSleep.sleep] as @a[team=!Afk.main] run team leave @s
