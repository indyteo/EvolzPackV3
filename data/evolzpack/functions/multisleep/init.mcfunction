execute unless score SLEEP_PERCENT CONST matches 0..100 run scoreboard players set SLEEP_PERCENT CONST 30
scoreboard objectives add EnterBed minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add LeaveBed minecraft.custom:minecraft.time_since_rest
scoreboard objectives add Sleeping dummy

bossbar add multisleep {"text":"Multiplayer Sleep by indyteo"}
bossbar set multisleep style progress
bossbar set multisleep color green
