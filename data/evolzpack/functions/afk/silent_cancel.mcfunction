execute if entity @a[tag=MultiSleep.sleep] if entity @s[team=Afk.main] run function evolzpack:multisleep/set_team
execute unless entity @a[tag=MultiSleep.sleep] run team leave @s
scoreboard players reset @s Afk.afkTime

function evolzpack:multisleep/check_skip_night
