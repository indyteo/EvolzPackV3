execute as @a if score @s mob_count matches -2147483648..2147483647 unless score @s mob_count matches 0 run function evolzpack:mobcounter/mob_count
execute as @a unless score @s mob_count matches -2147483648..2147483647 run scoreboard players set @s mob_count 0

execute as @a[advancements={evolzpack:nether/netherite_stuff=true}] run scoreboard players enable @s mob_count
