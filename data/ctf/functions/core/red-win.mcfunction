
execute at @e[type=minecraft:armor_stand,name="center"] run tellraw @a {"text":"\u271a THE RED TEAM WON THE MATCH \u271a","color":"red"}

execute at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text":"RED TEAM WINS","color":"red"}

execute at @e[type=minecraft:armor_stand,name="center"] run clear @a[distance=..20]
