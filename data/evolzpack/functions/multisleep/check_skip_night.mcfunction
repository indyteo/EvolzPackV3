advancement revoke @s only evolzpack:special/multisleep/change_dimension

scoreboard players set overworldPlayerCount VAR 0
execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players add overworldPlayerCount VAR 1

scoreboard players operation sleepingPercent VAR = totalSleeping VAR
scoreboard players operation sleepingPercent VAR *= 100 CONST
scoreboard players operation sleepingPercent VAR /= overworldPlayerCount VAR

execute store result score Time VAR run time query daytime
function evolzpack:multisleep/display

execute if score skipNight VAR matches 1 if score Time VAR matches 12541..23458 unless score sleepingPercent VAR >= SLEEP_PERCENT CONST run function evolzpack:multisleep/dont_skip_night
execute if score sleepingPercent VAR >= SLEEP_PERCENT CONST run function evolzpack:multisleep/skip_night
