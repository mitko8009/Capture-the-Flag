#Score
execute if score score ctf > #75 ctf if score score ctf < #125 ctf at @e[type=minecraft:armor_stand,name="center"] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool replace
execute if score score ctf >= #125 ctf if score score ctf < #150 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~-1 ~-1 ~-1 run place template ctf:assets/blue-flag-1
execute if score score ctf <= #75 ctf if score score ctf > #50 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~-1 ~-1 ~-1 run place template ctf:assets/red-flag-1
execute if score score ctf >= #150 ctf if score score ctf < #175 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~-1 ~-1 ~-1 run place template ctf:assets/blue-flag-2
execute if score score ctf <= #50 ctf if score score ctf > #25 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~-1 ~-1 ~-1 run place template ctf:assets/red-flag-2
execute if score score ctf >= #175 ctf if score score ctf < #200 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~-1 ~-1 ~-1 run place template ctf:assets/blue-flag-3
execute if score score ctf <= #25 ctf if score score ctf > #0 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~-1 ~-1 ~-1 run place template ctf:assets/red-flag-3

execute if score score ctf >= #0 ctf if score score ctf < #200 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~ ~ ~ at @a[team=blue,distance=..2,gamemode=!spectator] run scoreboard players add score ctf 1
execute if score score ctf > #0 ctf if score score ctf <= #200 ctf at @e[type=minecraft:armor_stand,name="center"] positioned ~ ~ ~ at @a[team=red,distance=..2,gamemode=!spectator] run scoreboard players remove score ctf 1

#BossBar
execute at @e[type=minecraft:armor_stand,name="center"] positioned ~ ~ ~ run bossbar set minecraft:score players @a[distance=..20]
execute store result bossbar minecraft:score value run scoreboard players get score ctf
execute if score score ctf >= #125 ctf run bossbar set minecraft:score name "Score - Blue"
execute if score score ctf >= #125 ctf run bossbar set minecraft:score color blue
execute if score score ctf <= #75 ctf run bossbar set minecraft:score name "Score - Red"
execute if score score ctf <= #75 ctf run bossbar set minecraft:score color red
execute if score score ctf > #75 ctf if score score ctf < #125 ctf run bossbar set minecraft:score name "Score"
execute if score score ctf > #75 ctf if score score ctf < #125 ctf run bossbar set minecraft:score color white

scoreboard players set #main ctf 0

#In Spawn
execute at @e[type=armor_stand, name="blue-team-spawn"] run effect give @a[team=blue,distance=..2] resistance 1 5 true
execute at @e[type=armor_stand, name="red-team-spawn"] run effect give @a[team=red,distance=..2] resistance 1 5 true

execute at @e[type=armor_stand, name="blue-team-spawn"] run title @a[team=blue,distance=..2] actionbar {"text":"Team: Blue","color":"blue"}
execute at @e[type=armor_stand, name="red-team-spawn"] run title @a[team=red,distance=..2] actionbar {"text": "Team: Red", "color": "red"}

#On win
execute if score score ctf matches 200 at @e[type=minecraft:armor_stand,name="center"] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:blue_wool replace
execute if score score ctf matches 0 at @e[type=minecraft:armor_stand,name="center"] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:red_wool replace

execute if score score ctf matches 200 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:item.goat_horn.sound.0 voice @a[distance=..20,team=blue] ~ ~ ~ 100
execute if score score ctf matches 0 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:item.goat_horn.sound.0 voice @a[distance=..20,team=red] ~ ~ ~ 100

execute if score score ctf matches 200 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.anvil.destroy voice @a[distance=..20,team=red] ~ ~ ~ 100 0
execute if score score ctf matches 0 at @e[type=minecraft:armor_stand,name="center"] run playsound minecraft:block.anvil.destroy voice @a[distance=..20,team=blue] ~ ~ ~ 100 0

execute if score score ctf matches 200 run function ctf:core/blue-win
execute if score score ctf matches 0 run function ctf:core/red-win

execute if score score ctf matches 200 run scoreboard players set score ctf 201
execute if score score ctf matches 0 run scoreboard players set score ctf -1

#Particles
function ctf:core/particles
