# Increment counter
scoreboard players add @s TamedWolf 1
# Revoke trigger advancement if necessary
execute unless score @s TamedWolf matches 5.. run advancement revoke @s only evolzpack:mythology/heroes/cerbere_tame_wolf

# Check counter value
execute if score @s TamedWolf matches 1.. run advancement grant @s only evolzpack:mythology/heroes/cerbere tame_first
execute if score @s TamedWolf matches 2.. run advancement grant @s only evolzpack:mythology/heroes/cerbere tame_second
execute if score @s TamedWolf matches 3.. run advancement grant @s only evolzpack:mythology/heroes/cerbere tame_third
execute if score @s TamedWolf matches 4.. run advancement grant @s only evolzpack:mythology/heroes/cerbere tame_four
execute if score @s TamedWolf matches 5.. run advancement grant @s only evolzpack:mythology/heroes/cerbere tame_five