summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["SuperTNT.tntFinder","SuperTNT.toTP"],Marker:1b,Invisible:1b}
execute rotated as @s as @e[type=armor_stand,tag=SuperTNT.tntFinder,tag=SuperTNT.toTP,sort=nearest,limit=1] run function evolzpack:supertnt/find_tnt_step
kill @s

scoreboard players add SuperTNT.search VAR 1
