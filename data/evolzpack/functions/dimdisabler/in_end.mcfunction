function evolzpack:dimdisabler/tp_to_spawn
execute if entity @s[advancements={minecraft:story/enter_the_end=true}] run tellraw @a ["",{"selector":"@s"},{"text":" has lost the advancement "},{"text":"[The End?]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"The End?\nEnter the End Portal","color":"green"}}}]
advancement revoke @s only minecraft:story/enter_the_end
advancement revoke @s only minecraft:end/root
