summon area_effect_cloud ~ ~ ~ {Tags:["SuperTNT.upgradedTNT"],Duration:999999}
kill @s

execute as @e[type=area_effect_cloud,tag=SuperTNT.upgradedTNT] at @s run function evolzpack:supertnt/validate_placing
scoreboard players set SuperTNT.search VAR -1
