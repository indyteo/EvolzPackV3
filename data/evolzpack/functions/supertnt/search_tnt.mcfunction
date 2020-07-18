execute if block ~ ~ ~ minecraft:tnt align xyz positioned ~.5 ~.5 ~.5 run function evolzpack:supertnt/tnt_found
execute unless block ~ ~ ~ minecraft:tnt rotated as @s run function evolzpack:supertnt/find_tnt

# Loop
execute if score SuperTNT.search VAR matches 1..500 as @e[type=armor_stand,tag=SuperTNT.tntFinder,sort=nearest,limit=1] at @s run function evolzpack:supertnt/search_tnt
execute unless score SuperTNT.search VAR matches 1..500 as @e[type=armor_stand,tag=SuperTNT.tntFinder] run kill @s
