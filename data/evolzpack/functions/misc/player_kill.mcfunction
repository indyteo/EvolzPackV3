scoreboard players reset @s Misc.playerKill

execute store result score keepInventory Misc.gamerules run gamerule keepInventory
execute if score keepInventory Misc.gamerules matches 0 run loot spawn ~ ~ ~ loot evolzpack:misc/player_head
execute if score keepInventory Misc.gamerules matches 1 run loot give @s loot evolzpack:misc/player_head
