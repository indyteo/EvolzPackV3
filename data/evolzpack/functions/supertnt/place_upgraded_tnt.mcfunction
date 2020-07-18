advancement revoke @s only evolzpack:special/supertnt/place_upgraded_tnt

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["SuperTNT.tntFinder"],Marker:1b,Invisible:1b}
execute at @s rotated as @s run tp @e[type=armor_stand,tag=SuperTNT.tntFinder,sort=nearest,limit=1] ~ ~1.62 ~ ~ ~

scoreboard players reset SuperTNT.search VAR
execute as @e[type=armor_stand,tag=SuperTNT.tntFinder,sort=nearest,limit=1] at @s run function evolzpack:supertnt/search_tnt
