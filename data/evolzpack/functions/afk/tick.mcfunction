scoreboard players add @a Afk.afkTime 1
execute unless score AFK_TIME CONST matches -1 as @a[team=!Afk.main] if score @s Afk.afkTime >= AFK_TIME CONST run function evolzpack:afk/afk

# Movement cancel
execute as @a run function evolzpack:afk/check_move
execute as @a[scores={Afk.rejoin=1..}] run function evolzpack:afk/rejoin
