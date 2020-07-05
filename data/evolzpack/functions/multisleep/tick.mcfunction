execute as @a unless score @s Sleeping matches 0..1 run scoreboard players set @s Sleeping 0

execute as @a if score @s Sleeping matches 0 if score @s EnterBed matches 1.. run function evolzpack:multisleep/enter_bed
execute as @a if score @s Sleeping matches 1 if score @s LeaveBed matches 1.. run function evolzpack:multisleep/leave_bed

execute if score skipNight VAR matches 1 run time add 39
execute store result score Time VAR run time query daytime
execute if score skipNight VAR matches 1 unless score Time VAR matches 12541..23458 run function evolzpack:multisleep/end_of_night
execute unless score Time VAR matches 12541..23458 run bossbar set multisleep visible false
