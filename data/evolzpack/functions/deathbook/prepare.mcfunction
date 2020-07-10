# Get Coords At Death
execute store result score @s DeathBook.x run data get entity @s Pos[0]
execute store result score @s DeathBook.y run data get entity @s Pos[1]
execute store result score @s DeathBook.z run data get entity @s Pos[2]

# Reset Died Score
scoreboard players set @s DeathBook.died 0