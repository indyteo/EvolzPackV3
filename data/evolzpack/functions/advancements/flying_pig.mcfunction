execute store result score @s Adv.fallPigs run data get entity @s RootVehicle.Entity.FallDistance
execute if score @s Adv.fallPigs matches 5.. run advancement grant @s only evolzpack:bedrock/flying_pig
scoreboard players reset @s Adv.fallPigs