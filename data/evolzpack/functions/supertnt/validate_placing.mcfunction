scoreboard players reset SuperTNT.invalid VAR

execute unless block ~ ~-1 ~ minecraft:bedrock run function evolzpack:supertnt/invalid_placed
execute unless score SuperTNT.invalid VAR matches 1 as @p unless entity @s[nbt={Dimension:"minecraft:the_nether"}] run execute as @e[type=area_effect_cloud,tag=SuperTNT.upgradedTNT] run function evolzpack:supertnt/invalid_placed

execute store result score SuperTNT.y VAR run data get entity @s Pos[1] 1
execute unless score SuperTNT.invalid VAR matches 1 unless score SuperTNT.y VAR matches 120..130 run function evolzpack:supertnt/invalid_placed
