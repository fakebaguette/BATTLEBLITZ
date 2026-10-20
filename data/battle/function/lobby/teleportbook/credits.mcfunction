tp @s -32 109 -128 90 0
playsound block.note_block.pling master @s -32 109 -128 1 1.9
playsound entity.player.teleport master @s -32 109 -128 1 1.3
scoreboard players reset @s tpCredits

tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Want to support us? Check out our ","color":"white"},{"text":"links","color":"gold"},{"text":"!","color":"white"},"\n - ",{"text":"YouTube","click_event":{"action":"open_url",url:"https://www.youtube.com/@fakebaguette."},"color":"#ff3333"},"\n - ",{"text":"Planet Minecraft","click_event":{"action":"open_url",url:"https://www.planetminecraft.com/member/noobdevelopment/"},"color":"#66ccff"}]