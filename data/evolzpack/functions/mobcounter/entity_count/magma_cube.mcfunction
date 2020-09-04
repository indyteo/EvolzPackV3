# Count entities
scoreboard players set magma_cube MC.mobCount 0
execute at @s as @e[type=minecraft:magma_cube,distance=..128] run scoreboard players add magma_cube MC.mobCount 1

# Check if it should be displayed
scoreboard players set MC.displayMsg VAR 0
execute if score magma_cube MC.mobCount matches 1.. run scoreboard players set MC.displayMsg VAR 1
execute unless score @s mob_count matches 1 run scoreboard players set MC.displayMsg VAR 1
execute if score MC.displayMsg VAR matches 1 run tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"magma_cube","objective":"MC.mobCount"},"color":"yellow"},{"text":" Magma Cube","color":"gold"}]
