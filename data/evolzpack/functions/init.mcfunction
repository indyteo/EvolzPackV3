execute unless score setupDone VAR matches 0.. run function evolzpack:setup

scoreboard objectives add BellsRung minecraft.custom:minecraft.bell_ring
scoreboard objectives add FallingPigs dummy
scoreboard objectives add FallingStrider dummy
scoreboard objectives add TamedWolf dummy
scoreboard objectives add Time dummy

tellraw @a ["",{"text":"Reload successful!"}]