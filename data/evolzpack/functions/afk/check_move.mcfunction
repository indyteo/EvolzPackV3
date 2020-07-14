scoreboard players operation Afk.oldYaw VAR = @s Afk.playerYaw
scoreboard players operation Afk.oldPitch VAR = @s Afk.playerPitch

execute store result score @s Afk.playerYaw run data get entity @s Rotation[0] 10000
execute store result score @s Afk.playerPitch run data get entity @s Rotation[1] 10000

execute unless score @s Afk.playerYaw = Afk.oldYaw VAR run function evolzpack:afk/cancel_afk
execute unless score @s Afk.playerPitch = Afk.oldPitch VAR run function evolzpack:afk/cancel_afk
