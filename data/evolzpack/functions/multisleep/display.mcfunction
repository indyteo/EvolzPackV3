bossbar set multisleep players @a[nbt={Dimension:"minecraft:overworld"}]

execute store result bossbar multisleep max run scoreboard players get overworldPlayerCount VAR
execute store result bossbar multisleep value run scoreboard players get totalSleeping VAR

bossbar set multisleep name [{"text":"Sleeping : "},{"score":{"name":"totalSleeping","objective":"VAR"}},{"text":" / "},{"score":{"name":"overworldPlayerCount","objective":"VAR"}},{"text":" ("},{"score":{"name":"sleepingPercent","objective":"VAR"}},{"text":" %) | Minimum : "},{"score":{"name":"SLEEP_PERCENT","objective":"CONST"}},{"text":" %"}]

execute if score Time VAR matches 12541..23458 if entity @a[scores={Sleeping=1},nbt={Dimension:"minecraft:overworld"}] run tellraw @a [{"text":"Currently sleeping : "},{"selector":"@a[scores={Sleeping=1},nbt={Dimension:\"minecraft:overworld\"}]"}]
execute if score Time VAR matches 12541..23458 if entity @a[scores={Sleeping=0},nbt={Dimension:"minecraft:overworld"}] run tellraw @a [{"text":"Currently awake : "},{"selector":"@a[scores={Sleeping=0},nbt={Dimension:\"minecraft:overworld\"}]"}]
