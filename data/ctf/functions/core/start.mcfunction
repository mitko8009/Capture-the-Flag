
execute if score #timer ctf matches 15 at @e[type=minecraft:armor_stand,name="center"] run effect give @a[distance=..20] slowness 9 100 true
execute if score #timer ctf matches 15 at @e[type=minecraft:armor_stand,name="center"] run tellraw @a[distance=..20] {"text":"[CTF] 15 Seconds Remaining", "color": "yellow"}
execute if score #timer ctf matches 15 run tellraw @a ["",{"text":"Select a kit: "},{"text":"[Mele]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function ctf:core/mele"}},{"text":" ","color":"green"},{"text":"[Archer]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function ctf:core/bow"}},{"text":" ","color":"green"},{"text":"[Tank]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function ctf:core/tank"}}]

execute at @e[type=minecraft:armor_stand,name="blue-team-spawn"] run tp @a[team=blue] ~ ~ ~
execute at @e[type=minecraft:armor_stand,name="red-team-spawn"] run tp @a[team=red] ~ ~ ~

execute if score #timer ctf matches 10 at @e[type=minecraft:armor_stand,name="center"] run effect give @a[distance=..20] slowness 9 100 true
execute if score #timer ctf matches 10 at @e[type=minecraft:armor_stand,name="center"] run tellraw @a[distance=..20] {"text":"[CTF] 10 Seconds Remaining", "color": "yellow"}

execute if score #timer ctf matches 5 at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text": "5", "color": "green", "bold": true}
execute if score #timer ctf matches 5 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.note_block.snare voice @a[distance=..20] ~ ~ ~ 100 0
execute if score #timer ctf matches 5 run function ctf:core/items

execute if score #timer ctf matches 4 at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text": "4", "color": "green", "bold": true}
execute if score #timer ctf matches 4 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.note_block.snare voice @a[distance=..20] ~ ~ ~ 100 0

execute if score #timer ctf matches 3 at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text": "3", "color": "yellow", "bold": true}
execute if score #timer ctf matches 3 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.note_block.snare voice @a[distance=..20] ~ ~ ~ 100 0

execute if score #timer ctf matches 2 at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text": "2", "color": "yellow", "bold": true}
execute if score #timer ctf matches 2 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.note_block.snare voice @a[distance=..20] ~ ~ ~ 100 0

execute if score #timer ctf matches 1 at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text": "1", "color": "red", "bold": true}
execute if score #timer ctf matches 1 at @e[type=minecraft:armor_stand,name="center"] run effect clear @a[distance=..20] slowness
execute if score #timer ctf matches 1 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.note_block.snare voice @a[distance=..20] ~ ~ ~ 100 0

execute if score #timer ctf matches 0 at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text": "Go", "color": "green", "bold": true}
execute if score #timer ctf matches 0 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.note_block.bell voice @a[distance=..20] ~ ~ ~ 100 0


scoreboard players remove #timer ctf 1

execute if score #timer ctf matches -1 run scoreboard players set #timer_tick_stop ctf 1

scoreboard players set #timer_tick ctf 0
