# Capture the Flag (mcDatapack)
**CTF for Minecraft with ready-to-use maps and kits. Easy to use and setup.**

# Installation and Setup
### Step 1
**Download the datapack from [Releases](https://github.com/mitko8009/Capture-the-Flag/releases).**

### Step 2 
**Installing locally:** Go to **%Appdata%/.minecraft/saves/** and find your world. In your world's folder, open **datapacks** and put the downloaded file in there.
**Installing on a server:** Go to your server's files and open the folder **world**, then open the **datapacks** folder and put the downloaded file in there.

### Step 3
**When you enter the world, use this command to enable the datapack:** `/datapack enable "file/capture-the-flag"`

### Step 4
**Use the following commands to set up the playground:**
```js
/execute at @s positioned ~-14 ~-1 ~-14 run place template ctf:default-maps/default-map-1
/function ctf:add-playground
```

### Step 5
**To start the game, just use:** `/function ctf:start`

### NOTE: Make sure all players have OP or permission to use the datapack’s commands (except ctf:core/).