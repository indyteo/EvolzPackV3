execute store result score @s Adv.fallStriders run data get entity @s RootVehicle.Entity.FallDistance
execute if score @s Adv.fallStriders matches 30.. at @s at @e[type=strider,sort=nearest,limit=1] if block ~ ~ ~ lava run advancement grant @s only evolzpack:nether/strider_drop
scoreboard players reset @s Adv.fallStriders