function evolzpack:succes/end/special/in_water
function evolzpack:end/end_fall_tp

execute as @a[scores={CraftWand=1..}] run give @s prismarine_shard{CustomModelData:1,display:{Name:"[{\"text\":\"Prismarine Wand\",\"italic\":false}]"}}
execute as @a[scores={CraftWand=1..}] run clear @s knowledge_book 1
execute as @a[scores={CraftWand=1..}] run scoreboard players reset @s CraftWand

execute as @a[scores={RTT=1..}] at @s if data entity @s SelectedItem.tag.Tags[0] run execute as @e[type=minecraft:villager,limit=1,sort=nearest] if data entity @s Tags[0] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @a[scores={RTT=1..}] run scoreboard players reset @s RTT