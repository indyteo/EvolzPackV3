# Count entities
scoreboard players set ender_dragon MC.mobCount 0
execute at @s as @e[type=minecraft:ender_dragon,distance=..128] run scoreboard players add ender_dragon MC.mobCount 1

# Check if it should be displayed
scoreboard players set MC.displayMsg VAR 0
execute if score ender_dragon MC.mobCount matches 1.. run scoreboard players set MC.displayMsg VAR 1
execute unless score @s mob_count matches 1 run scoreboard players set MC.displayMsg VAR 1
execute if score MC.displayMsg VAR matches 1 run tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"ender_dragon","objective":"MC.mobCount"},"color":"yellow"},{"text":" Ender Dragon","color":"gold"}]
