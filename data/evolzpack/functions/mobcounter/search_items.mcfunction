tellraw @s ["",{"text":"Items found within 128 blocks matching your hand:","color":"yellow","bold":true}]

scoreboard players set items MC.mobCount 0
execute at @s as @e[type=minecraft:item,distance=..128] run function evolzpack:mobcounter/check_item

tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"items","objective":"MC.mobCount"},"color":"yellow"},{"text":" "},{"nbt":"Item.id","storage":"evolzpack:mobcounter","color":"gold"}]
