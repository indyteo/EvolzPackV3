summon area_effect_cloud ~ ~ ~ {Tags:["SuperTNT.tntFinder","SuperTNT.toTP"],Duration:999999}
execute rotated as @s as @e[type=area_effect_cloud,tag=SuperTNT.tntFinder,tag=SuperTNT.toTP,sort=nearest,limit=1] run function evolzpack:supertnt/find_tnt_step
kill @s

scoreboard players add SuperTNT.search VAR 1
