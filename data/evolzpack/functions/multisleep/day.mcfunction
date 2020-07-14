bossbar set multisleep.main visible false
execute as @a[team=!Afk.main] run team leave @s

execute if score MultiSleep.skipNight VAR matches 1 run function evolzpack:multisleep/end_of_night
