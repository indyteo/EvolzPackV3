# Define consts
execute unless score SLEEP_PERCENT CONST matches 0..100 run scoreboard players set SLEEP_PERCENT CONST 30

# Setup scoreboards
scoreboard objectives add MultiSleep.enter minecraft.custom:minecraft.sleep_in_bed "Multiplayer Sleep - Enter Bed"
scoreboard objectives add MultiSleep.leave minecraft.custom:minecraft.time_since_rest "Multiplayer Sleep - Leave Bed"
scoreboard objectives add MultiSleep.sleep dummy "Multiplayer Sleep - Sleeping"

# Setup bossbar
bossbar add multisleep.main "Multiplayer Sleep by indyteo"
bossbar set multisleep.main style progress
bossbar set multisleep.main color green
