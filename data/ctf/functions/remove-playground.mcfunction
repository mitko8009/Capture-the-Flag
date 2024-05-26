gamerule spawnRadius 16
gamerule keepInventory false

team remove blue
team remove red

execute at @e[type=minecraft:armor_stand,name="center"] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool replace

kill @e[type=minecraft:armor_stand,name="blue-team-spawn"]
kill @e[type=minecraft:armor_stand,name="red-team-spawn"]
kill @e[type=minecraft:armor_stand,name="center"]

tellraw @a ["",{"text":"[CTF]:","bold":true,"italic":true,"color":"green","hoverEvent":{"action":"show_text","contents":"Capture The Flag"}},{"text":" Your CTF playground has been removed.","color":"green"}]
