tag @s add CustomTrade.upgradedTNT
data modify entity @s Offers.Recipes append value {maxUses:999999,buy:{id:"minecraft:tnt",Count:1b},buyB:{id:"minecraft:fire_charge",Count:8b},sell:{id:"minecraft:tnt",Count:1b,tag:{Damage:0,Upgraded:1b,CanDestroy:["minecraft:bedrock"],display:{Name:"{\"text\":\"Upgraded TNT\",\"italic\":false}"}}},xp:45,rewardExp:1b}
