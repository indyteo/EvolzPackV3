# Book
give @s written_book{pages:["[\"\",{\"text\":\"    Informations\\n      de décès\",\"bold\":true,\"color\":\"dark_red\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"------------------\",\"strikethrough\":true,\"color\":\"dark_gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Défunt : \",\"color\":\"red\"},{\"selector\":\"@s\",\"color\":\"reset\",\"underline\":true,\"italic\":true},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Vous êtes mort en :\",\"color\":\"red\"},{\"text\":\"\\n   X : \",\"color\":\"none\",\"italic\":false},{\"score\":{\"name\":\"@s\",\"objective\":\"DeathBook.x\"},\"color\":\"none\"},{\"text\":\"\\n   Y : \",\"color\":\"none\"},{\"score\":{\"name\":\"@s\",\"objective\":\"DeathBook.y\"},\"color\":\"none\"},{\"text\":\"\\n   Z : \",\"color\":\"none\"},{\"score\":{\"name\":\"@s\",\"objective\":\"DeathBook.z\"},\"color\":\"none\"},{\"text\":\"\\nMerci de récupérer vos affaires.\",\"color\":\"red\"},{\"text\":\"\\n\\nCordialement,\\n\\n               La Mort.\",\"color\":\"reset\"}]"],title:"Death Book",author:"La Mort",generation:3}

# Message
tellraw @s ["",{"text":"\nRIP. Vous êtes mort en...","color":"dark_red","italic":true},{"text":"\n X: ","color":"none","italic":false},{"score":{"name":"@s","objective":"DeathBook.x"},"color":"none"},{"text":"\n Y: ","color":"none"},{"score":{"name":"@s","objective":"DeathBook.y"},"color":"none"},{"text":"\n Z: ","color":"none"},{"score":{"name":"@s","objective":"DeathBook.z"},"color":"none"},{"text":"\nAllez récupérer votre stuff.","color":"dark_red","italic":true}]
