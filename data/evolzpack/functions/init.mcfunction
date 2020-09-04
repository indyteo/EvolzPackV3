scoreboard objectives add CONST dummy "Global - Constants"
scoreboard objectives add VAR dummy "Global - Variables"

# Consts
scoreboard players set 0 CONST 0
scoreboard players set 100 CONST 100

# Setup
execute unless score SetupDone VAR matches 0.. run function evolzpack:setup

# Features init
function #evolzpack:init

tellraw @a ["",{"text":"Reload successful!"}]
