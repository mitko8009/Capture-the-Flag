gamerule spawnRadius 0
gamerule keepInventory true

scoreboard objectives add ctf dummy
scoreboard players set score ctf 100
scoreboard players set #timer_tick_stop ctf 0
scoreboard players set #timer_tick ctf 0
scoreboard players set #timer ctf 0
scoreboard players set #200 ctf 200
scoreboard players set #175 ctf 175
scoreboard players set #150 ctf 150
scoreboard players set #125 ctf 125
scoreboard players set #100 ctf 100
scoreboard players set #75 ctf 75
scoreboard players set #50 ctf 50
scoreboard players set #25 ctf 25
scoreboard players set #0 ctf 0

bossbar add score "score"
bossbar set minecraft:score name "Score"
bossbar set minecraft:score max 200
bossbar set minecraft:score color white
bossbar set minecraft:score style notched_10
bossbar set minecraft:score visible true
execute store result bossbar minecraft:score value run scoreboard players get score ctf

team add blue
team modify blue prefix "[Blue] "
team modify blue friendlyFire false
team modify blue color blue
team modify blue seeFriendlyInvisibles true

team add red
team modify red prefix "[Red] "
team modify red friendlyFire false
team modify red color red
team modify red seeFriendlyInvisibles true

kill @e[type=minecraft:armor_stand,name="blue-team-spawn"]
kill @e[type=minecraft:armor_stand,name="red-team-spawn"]
kill @e[type=minecraft:armor_stand,name="center"]

summon armor_stand ~10 ~ ~-10 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"blue-team-spawn"}'}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"center"}'}
summon armor_stand ~-10 ~ ~10 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"red-team-spawn"}'}

team join blue @e[type=minecraft:armor_stand, name="blue-team-spawn"]
team join red @e[type=minecraft:armor_stand, name="red-team-spawn"]

effect give @e[type=minecraft:armor_stand] minecraft:glowing 15 0 true

tellraw @a ["",{"text":"Choose a team:","color":"yellow"},{"text":" ","color":"#CE9178"},{"text":"[RED]","color":"red","clickEvent":{"action":"run_command","value":"/team join red @s"}},{"text":" |","color":"#939393"},{"text":" ","color":"#CE9178"},{"text":"[BLUE]","color":"blue","clickEvent":{"action":"run_command","value":"/team join blue @s"}},{"text":"\n"},{"text":"Do you want to start the game now?","color":"#C3F3FF"},{"text":" ","color":"#CE9178"},{"text":"[Start]","color":"green","clickEvent":{"action":"run_command","value":"/function ctf:start"}}]
