# Count entities
scoreboard players set hoglin MC.mobCount 0
execute at @s as @e[type=minecraft:hoglin,distance=..128] run scoreboard players add hoglin MC.mobCount 1

# Check if it should be displayed
scoreboard players set MC.displayMsg VAR 0
execute if score hoglin MC.mobCount matches 1.. run scoreboard players set MC.displayMsg VAR 1
execute unless score @s mob_count matches 1 run scoreboard players set MC.displayMsg VAR 1
execute if score MC.displayMsg VAR matches 1 run tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"hoglin","objective":"MC.mobCount"},"color":"yellow"},{"text":" Hoglin","color":"gold"}]
