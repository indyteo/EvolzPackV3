# Count entities
scoreboard players set piglin_brute MC.mobCount 0
execute at @s as @e[type=minecraft:piglin_brute,distance=..128] run scoreboard players add piglin_brute MC.mobCount 1

# Check if it should be displayed
scoreboard players set MC.displayMsg VAR 0
execute if score piglin_brute MC.mobCount matches 1.. run scoreboard players set MC.displayMsg VAR 1
execute unless score @s mob_count matches 1 run scoreboard players set MC.displayMsg VAR 1
execute if score MC.displayMsg VAR matches 1 run tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"piglin_brute","objective":"MC.mobCount"},"color":"yellow"},{"text":" Piglin Brute","color":"gold"}]
