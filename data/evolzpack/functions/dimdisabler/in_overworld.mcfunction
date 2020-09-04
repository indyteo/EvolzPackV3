function evolzpack:dimdisabler/tp_to_spawn
execute if entity @s[advancements={minecraft:story/enter_the_nether=true}] run tellraw @a ["",{"selector":"@s"},{"text":" has lost the advancement "},{"text":"[We Need to Go Upper]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"We Need to Go Upper\nBuild, light and exit a Nether Portal","color":"green"}}}]
advancement revoke @s only minecraft:story/enter_the_nether
