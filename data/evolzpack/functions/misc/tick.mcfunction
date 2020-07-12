#######################
# Entity rename spawn #
#######################

# Illusioner (rename Vindicator "illusioner")
execute positioned as @e[type=minecraft:vindicator,nbt={CustomName:"{\"text\":\"illusioner\"}"}] run summon minecraft:illusioner
kill @e[type=minecraft:vindicator,nbt={CustomName:"{\"text\":\"illusioner\"}"}]

# Zombie horse (rename skeleton horse "zombie")
execute positioned as @e[type=minecraft:skeleton_horse,nbt={CustomName:"{\"text\":\"zombie\"}"}] run summon minecraft:zombie_horse ~ ~ ~ {Tame:1}
kill @e[type=minecraft:skeleton_horse,nbt={CustomName:"{\"text\":\"zombie\"}"}]

# Killer Bunny Rabbit (rename rabbit "killer")
execute as @e[type=minecraft:rabbit,nbt={CustomName:"{\"text\":\"killer\"}"}] run data merge entity @s {RabbitType:99,CustomName:"{\"text\":\"The Killer Bunny\"}"}


#######################
# End Fall prevention #
#######################

execute as @a[nbt={Dimension:"minecraft:the_end"}] in the_end at @s if entity @s[y=-50,dy=20] run execute in overworld run tp @s ~ 255 ~


#######################
# Player Head on Kill #
#######################

execute as @a if score @s Misc.playerKill matches 1.. at @s run function evolzpack:misc/player_kill
