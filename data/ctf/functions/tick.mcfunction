execute at @e[type=minecraft:armor_stand,name="blue-team-spawn"] run spawnpoint @a[team=blue] ~ ~ ~ 45
execute at @e[type=minecraft:armor_stand,name="red-team-spawn"] run spawnpoint @a[team=red] ~ ~ ~ -135

scoreboard players add #main ctf 1
execute if score #main ctf matches 2 run function ctf:core/main

execute if score #timer_tick_stop ctf matches 0 run scoreboard players add #timer_tick ctf 1
execute if score #timer_tick_stop ctf matches 0 if score #timer_tick ctf matches 20 run function ctf:core/start

execute if score #timer_tick_stop ctf matches 0 at @e[type=minecraft:armor_stand,name="blue-team-spawn"] run spawnpoint @a[team=blue] ~ ~ ~ 
execute if score #timer_tick_stop ctf matches 0 at @e[type=minecraft:armor_stand,name="red-team-spawn"] run spawnpoint @a[team=red] ~ ~ ~
