scoreboard players set setupDone VAR 0

scoreboard objectives add health health {"text":"❤","color":"dark_red"}
scoreboard objectives modify health rendertype hearts
scoreboard objectives setdisplay belowName health

scoreboard objectives add deaths deathCount {"text":"☠","color":"gray"}
scoreboard objectives setdisplay list deaths
