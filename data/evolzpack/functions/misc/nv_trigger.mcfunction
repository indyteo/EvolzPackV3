execute if score @s night_vision matches 2.. run scoreboard players set @s night_vision 0

execute if score @s night_vision matches 0 run tellraw @s [{"text":"Night Vision : "},{"text":"Désactivé","color":"red"},{"text":" (Rappel : L'effet de Night Vision s'estompera dans 15 secondes)","color":"dark_gray","italic":true}]
execute if score @s night_vision matches 1 run tellraw @s [{"text":"Night Vision : "},{"text":"Activé","color":"green"},{"text":" (Rappel : Vous devez porter un casque en Netherite amélioré dans le Nether pour bénéficier de la Night Vision)","color":"dark_gray","italic":true}]
