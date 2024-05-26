
execute at @e[type=minecraft:armor_stand,name="center"] run tellraw @a {"text":"\u271a THE BLUE TEAM WON THE MATCH \u271a","color":"blue"}

execute at @e[type=minecraft:armor_stand,name="center"] run title @a[distance=..20] title {"text":"BLUE TEAM WINS","color":"blue"}

execute at @e[type=minecraft:armor_stand,name="center"] run clear @a[distance=..20]


