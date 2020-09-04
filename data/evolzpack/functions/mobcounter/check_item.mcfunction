data modify storage evolzpack:mobcounter Item.test set from storage evolzpack:mobcounter Item.id
execute store success score MC.itemMatch VAR run data modify storage evolzpack:mobcounter Item.test set from entity @s Item.id

execute if score MC.itemMatch VAR matches 0 store result score MC.itemCount VAR run data get entity @s Item.Count
execute if score MC.itemMatch VAR matches 0 run scoreboard players operation items MC.mobCount += MC.itemCount VAR
