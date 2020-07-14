# Scoreboards setup
scoreboard objectives add Afk.afkTime dummy "AFK - AFK Time"
scoreboard objectives add Afk.playerYaw dummy "AFK - Player Yaw (scaled by 10000)"
scoreboard objectives add Afk.playerPitch dummy "AFK - Player Pitch (scaled by 10000)"
scoreboard objectives add Afk.rejoin minecraft.custom:minecraft.leave_game "AFK - Rejoin"

# Team setup
team add Afk.main "AFK by indyteo"
team modify Afk.main color dark_gray
team modify Afk.main prefix "[AFK] "

# Const setup
execute unless score AFK_TIME CONST matches -1.. run scoreboard players set AFK_TIME CONST 6000
