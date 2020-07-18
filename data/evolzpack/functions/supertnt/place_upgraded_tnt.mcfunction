advancement revoke @s only evolzpack:special/supertnt/place_upgraded_tnt

execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["SuperTNT.tntFinder"],Duration:999999}
execute at @s rotated as @s run tp @e[type=area_effect_cloud,tag=SuperTNT.tntFinder,sort=nearest,limit=1] ~ ~1.62 ~ ~ ~

scoreboard players reset SuperTNT.search VAR
execute as @e[type=area_effect_cloud,tag=SuperTNT.tntFinder,sort=nearest,limit=1] at @s run function evolzpack:supertnt/search_tnt
