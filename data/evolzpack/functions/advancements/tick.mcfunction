# Ring Bell
execute as @a at @s if score @s Adv.bellsRung matches 1.. if entity @e[type=#raiders,distance=..75,nbt=!{Wave:0}] run advancement grant @s only evolzpack:bedrock/ring_bell ring_bell_in_raid
scoreboard players reset @a Adv.bellsRung
execute if entity @a[advancements={evolzpack:bedrock/ring_bell=true}] run advancement revoke @s only evolzpack:bedrock/ring_bell

# Fly Into Small Hole
# Up / Down
execute as @a[advancements={evolzpack:bedrock/fly_into_small_hole=false},nbt={FallFlying:1b}] at @s unless block ~ ~ ~ #evolzpack:solid_block if block ~1 ~ ~ #evolzpack:solid_block if block ~-1 ~ ~ #evolzpack:solid_block if block ~ ~ ~1 #evolzpack:solid_block if block ~ ~ ~-1 #evolzpack:solid_block run advancement grant @s only evolzpack:bedrock/fly_into_small_hole
# East / West
execute as @a[advancements={evolzpack:bedrock/fly_into_small_hole=false},nbt={FallFlying:1b}] at @s unless block ~ ~ ~ #evolzpack:solid_block if block ~ ~1 ~ #evolzpack:solid_block if block ~ ~-1 ~ #evolzpack:solid_block if block ~ ~ ~1 #evolzpack:solid_block if block ~ ~ ~-1 #evolzpack:solid_block run advancement grant @s only evolzpack:bedrock/fly_into_small_hole
# North / South
execute as @a[advancements={evolzpack:bedrock/fly_into_small_hole=false},nbt={FallFlying:1b}] at @s unless block ~ ~ ~ #evolzpack:solid_block if block ~ ~1 ~ #evolzpack:solid_block if block ~ ~-1 ~ #evolzpack:solid_block if block ~1 ~ ~ #evolzpack:solid_block if block ~-1 ~ ~ #evolzpack:solid_block run advancement grant @s only evolzpack:bedrock/fly_into_small_hole

# Flying Pig
execute as @a[advancements={evolzpack:bedrock/flying_pig=false},nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] run function evolzpack:advancements/flying_pig

# Strider Drop
execute as @a[advancements={evolzpack:nether/strider_drop=false},nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] run function evolzpack:advancements/strider_drop
