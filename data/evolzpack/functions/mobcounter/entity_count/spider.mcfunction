# Count entities
scoreboard players set spider MC.mobCount 0
execute at @s as @e[type=minecraft:spider,distance=..128] run scoreboard players add spider MC.mobCount 1

# Check if it should be displayed
scoreboard players set MC.displayMsg VAR 0
execute if score spider MC.mobCount matches 1.. run scoreboard players set MC.displayMsg VAR 1
execute unless score @s mob_count matches 1 run scoreboard players set MC.displayMsg VAR 1
execute if score MC.displayMsg VAR matches 1 run tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"spider","objective":"MC.mobCount"},"color":"yellow"},{"text":" Spider","color":"gold"}]
