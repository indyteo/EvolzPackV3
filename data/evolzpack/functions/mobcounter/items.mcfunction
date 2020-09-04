data modify storage evolzpack:mobcounter Item.id set value ""
execute store success score MC.validItem VAR run data modify storage evolzpack:mobcounter Item.id set from entity @s SelectedItem.id

execute if score MC.validItem VAR matches 0 run tellraw @s ["",{"text":"Invalid item!","color":"red"},{"text":" "},{"text":"Yo must hold a valid item in your hand to perform research","color":"dark_gray","italic":true}]
execute unless score MC.validItem VAR matches 0 run function evolzpack:mobcounter/search_items
