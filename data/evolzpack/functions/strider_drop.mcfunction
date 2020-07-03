execute store result score @s FallingStrider run data get entity @s RootVehicle.Entity.FallDistance
execute if score @s FallingStrider matches 30.. at @s at @e[type=strider,sort=nearest,limit=1] if block ~ ~ ~ lava run advancement grant @s only evolzpack:nether/strider_drop
scoreboard players reset @s FallingStrider