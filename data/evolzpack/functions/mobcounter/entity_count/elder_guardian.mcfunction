# Count entities
scoreboard players set elder_guardian MC.mobCount 0
execute at @s as @e[type=minecraft:elder_guardian,distance=..128] run scoreboard players add elder_guardian MC.mobCount 1

# Check if it should be displayed
scoreboard players set MC.displayMsg VAR 0
execute if score elder_guardian MC.mobCount matches 1.. run scoreboard players set MC.displayMsg VAR 1
execute unless score @s mob_count matches 1 run scoreboard players set MC.displayMsg VAR 1
execute if score MC.displayMsg VAR matches 1 run tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"elder_guardian","objective":"MC.mobCount"},"color":"yellow"},{"text":" Elder Guardian","color":"gold"}]
