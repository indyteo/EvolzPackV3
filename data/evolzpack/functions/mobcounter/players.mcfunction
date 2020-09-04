tellraw @s ["",{"text":"Players found within 128 blocks:","color":"yellow","bold":true}]

scoreboard players set players MC.mobCount -1
execute at @s as @a[distance=..128] run scoreboard players add players MC.mobCount 1

tellraw @s ["",{"text":"» ","color":"gold"},{"score":{"name":"players","objective":"MC.mobCount"},"color":"yellow"},{"text":" Player","color":"gold"}]

execute at @s if score players MC.mobCount matches 1.. run tellraw @s ["",{"text":"List: ","color":"gold"},{"selector":"@a[distance=..128]","color":"yellow"},{"text":".","color":"gold"}]
