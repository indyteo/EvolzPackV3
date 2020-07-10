scoreboard players reset @s MultiSleep.enter
bossbar set multisleep.main visible true

scoreboard players add MultiSleep.totalSleeping VAR 1
scoreboard players set @s MultiSleep.sleep 1

function evolzpack:multisleep/check_skip_night
