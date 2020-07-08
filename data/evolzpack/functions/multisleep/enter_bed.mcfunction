scoreboard players reset @s EnterBed
bossbar set multisleep visible true

scoreboard players add totalSleeping VAR 1
scoreboard players set @s Sleeping 1

function evolzpack:multisleep/check_skip_night
