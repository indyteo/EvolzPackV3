# Check activation
execute if entity @s[tag=!SuperTNT.activated] unless block ~ ~ ~ minecraft:tnt if entity @e[type=tnt,distance=...5] run function evolzpack:supertnt/primed_upgraded_tnt
execute if entity @s[tag=SuperTNT.activated] unless entity @e[type=tnt,distance=...75] run function evolzpack:supertnt/upgraded_tnt_explode

# Check destruction
execute if entity @s[tag=!SuperTNT.activated] unless block ~ ~ ~ minecraft:tnt unless entity @e[type=tnt,distance=...5] run function evolzpack:supertnt/destroyed_upgraded_tnt
