# Check if player has items
execute as @a[scores={DeathBook.died=1..}] at @s if entity @e[type=minecraft:item,distance=..2] run function evolzpack:deathbook/prepare

# Execute When Alive
execute as @a[scores={DeathBook.died=0,DeathBook.alive=20}] run function evolzpack:deathbook/death_report
