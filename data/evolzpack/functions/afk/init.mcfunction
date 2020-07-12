# Movement
scoreboard objectives add Afk.aviate minecraft.custom:minecraft.aviate_one_cm "AFK - Aviate Movement"
scoreboard objectives add Afk.boat minecraft.custom:minecraft.boat_one_cm "AFK - Boat Movement"
scoreboard objectives add Afk.climb minecraft.custom:minecraft.climb_one_cm "AFK - Climb Movement"
scoreboard objectives add Afk.crouch minecraft.custom:minecraft.crouch_one_cm "AFK - Crouch Movement"
scoreboard objectives add Afk.fall minecraft.custom:minecraft.fall_one_cm "AFK - Fall Movement"
scoreboard objectives add Afk.fly minecraft.custom:minecraft.fly_one_cm "AFK - Fly Movement"
scoreboard objectives add Afk.horse minecraft.custom:minecraft.horse_one_cm "AFK - Horse Movement"
scoreboard objectives add Afk.minecart minecraft.custom:minecraft.minecart_one_cm "AFK - Minecart Movement"
scoreboard objectives add Afk.pig minecraft.custom:minecraft.pig_one_cm "AFK - Pig Movement"
scoreboard objectives add Afk.sprint minecraft.custom:minecraft.sprint_one_cm "AFK - Sprint Movement"
scoreboard objectives add Afk.strider minecraft.custom:minecraft.strider_one_cm "AFK - Strider Movement"
scoreboard objectives add Afk.swim minecraft.custom:minecraft.swim_one_cm "AFK - Swim Movement"
scoreboard objectives add Afk.walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm "AFK - Walk On Water Movement"
scoreboard objectives add Afk.walk minecraft.custom:minecraft.walk_one_cm "AFK - Walk Movement"
scoreboard objectives add Afk.walkUnderWat minecraft.custom:minecraft.walk_under_water_one_cm "AFK - Walk Under Water Movement"

# Action
scoreboard objectives add Afk.jump minecraft.custom:minecraft.jump "AFK - Jump Action"
scoreboard objectives add Afk.sneak minecraft.custom:minecraft.sneak_time "AFK - Sneak Action"
scoreboard objectives add Afk.rejoin minecraft.custom:minecraft.leave_game "AFK - Rejoin Action"

# Team setup
team add Afk.main "AFK by indyteo"
team modify Afk.main color dark_gray
team modify Afk.main prefix "[AFK] "
team modify Afk.main suffix [{"text":" "},{"text":"✖","color":"dark_red"}]

# Const setup
execute unless score AFK_TIME CONST matches 0.. run scoreboard players set AFK_TIME CONST 6000
scoreboard objectives add Afk.afkTime dummy "AFK - AFK Time"
