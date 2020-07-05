bossbar set multisleep players @a[nbt={Dimension:"minecraft:overworld"}]

execute store result bossbar multisleep max run scoreboard players get overworldPlayerCount VAR
execute store result bossbar multisleep value run scoreboard players get totalSleeping VAR

bossbar set multisleep name [{"text":"Sleeping : "},{"score":{"name":"totalSleeping","objective":"VAR"}},{"text":" / "},{"score":{"name":"overworldPlayerCount","objective":"VAR"}},{"text":" ("},{"score":{"name":"sleepingPercent","objective":"VAR"}},{"text":" %) | Minimum : "},{"score":{"name":"SLEEP_PERCENT","objective":"CONST"}},{"text":" %"}]
