scoreboard objectives add CONST dummy
scoreboard objectives add VAR dummy

# Const
scoreboard players set 100 CONST 100

# Advancements
scoreboard objectives add BellsRung minecraft.custom:minecraft.bell_ring
scoreboard objectives add FallingPigs dummy
scoreboard objectives add FallingStrider dummy
scoreboard objectives add TamedWolf dummy

# Multiplayer Sleep
function evolzpack:multisleep/init

tellraw @a ["",{"text":"Reload successful!"}]
