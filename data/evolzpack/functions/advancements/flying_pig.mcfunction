execute store result score @s FallingPigs run data get entity @s RootVehicle.Entity.FallDistance
execute if score @s FallingPigs matches 5.. run advancement grant @s only evolzpack:bedrock/flying_pig
scoreboard players reset @s FallingPigs