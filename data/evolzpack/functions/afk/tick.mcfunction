execute as @a run scoreboard players add @s Afk.afkTime 1
execute as @a unless entity @s[team=Afk.main] if score @s Afk.afkTime >= AFK_TIME CONST run function evolzpack:afk/afk

# Movement cancel
execute as @a if score @s Afk.aviate matches 1.. run function evolzpack:afk/scoreboards/aviate
execute as @a if score @s Afk.boat matches 1.. run function evolzpack:afk/scoreboards/boat
execute as @a if score @s Afk.climb matches 1.. run function evolzpack:afk/scoreboards/climb
execute as @a if score @s Afk.crouch matches 1.. run function evolzpack:afk/scoreboards/crouch
execute as @a if score @s Afk.fall matches 1.. run function evolzpack:afk/scoreboards/fall
execute as @a if score @s Afk.fly matches 1.. run function evolzpack:afk/scoreboards/fly
execute as @a if score @s Afk.horse matches 1.. run function evolzpack:afk/scoreboards/horse
execute as @a if score @s Afk.minecart matches 1.. run function evolzpack:afk/scoreboards/minecart
execute as @a if score @s Afk.pig matches 1.. run function evolzpack:afk/scoreboards/pig
execute as @a if score @s Afk.sprint matches 1.. run function evolzpack:afk/scoreboards/sprint
execute as @a if score @s Afk.strider matches 1.. run function evolzpack:afk/scoreboards/strider
execute as @a if score @s Afk.swim matches 1.. run function evolzpack:afk/scoreboards/swim
execute as @a if score @s Afk.walkOnWater matches 1.. run function evolzpack:afk/scoreboards/walk_on_water
execute as @a if score @s Afk.walk matches 1.. run function evolzpack:afk/scoreboards/walk
execute as @a if score @s Afk.walkUnderWat matches 1.. run function evolzpack:afk/scoreboards/walk_under_water

# Action cancel
execute as @a if score @s Afk.jump matches 1.. run function evolzpack:afk/scoreboards/jump
execute as @a if score @s Afk.sneak matches 1.. run function evolzpack:afk/scoreboards/sneak
execute as @a if score @s Afk.rejoin matches 1.. run function evolzpack:afk/scoreboards/rejoin
