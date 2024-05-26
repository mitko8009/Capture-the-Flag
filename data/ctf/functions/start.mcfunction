
execute at @e[type=minecraft:armor_stand,name="blue-team-spawn"] run tp @a[team=blue] ~ ~ ~
execute at @e[type=minecraft:armor_stand,name="red-team-spawn"] run tp @a[team=red] ~ ~ ~

execute at @e[type=minecraft:armor_stand,name="center"] run effect give @a[distance=..20] minecraft:instant_health 1 100 true
execute at @e[type=minecraft:armor_stand,name="center"] run effect give @a[distance=..20] minecraft:saturation 1 100 true

scoreboard players set score ctf 100

scoreboard players set #timer_tick_stop ctf 0
scoreboard players set #timer_tick ctf 19
scoreboard players set #timer ctf 15
