bossbar set multisleep players @a[nbt={Dimension:"minecraft:overworld"}]

execute store result bossbar multisleep max run scoreboard players get overworldPlayerCount VAR
execute store result bossbar multisleep value run scoreboard players get totalSleeping VAR

execute if score sleepingPercent VAR >= SLEEP_PERCENT CONST run bossbar set multisleep name [{"text":"Couchés : ","color":"gray"},{"score":{"name":"totalSleeping","objective":"VAR"},"color":"aqua"},{"text":" / ","color":"gray"},{"score":{"name":"overworldPlayerCount","objective":"VAR"},"color":"dark_aqua"},{"text":" (","color":"gray"},{"score":{"name":"sleepingPercent","objective":"VAR"},"color":"green"},{"text":" %) | Minimum : ","color":"gray"},{"score":{"name":"SLEEP_PERCENT","objective":"CONST"},"color":"dark_green"},{"text":" %","color":"gray"}]
execute unless score sleepingPercent VAR >= SLEEP_PERCENT CONST run bossbar set multisleep name [{"text":"Couchés : ","color":"gray"},{"score":{"name":"totalSleeping","objective":"VAR"},"color":"aqua"},{"text":" / ","color":"gray"},{"score":{"name":"overworldPlayerCount","objective":"VAR"},"color":"dark_aqua"},{"text":" (","color":"gray"},{"score":{"name":"sleepingPercent","objective":"VAR"},"color":"red"},{"text":" %) | Minimum : ","color":"gray"},{"score":{"name":"SLEEP_PERCENT","objective":"CONST"},"color":"dark_red"},{"text":" %","color":"gray"}]
