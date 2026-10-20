scoreboard players add @s launchTime 0

playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 0.6 2
playsound entity.chicken.egg master @a ~ ~ ~ 1 1.7
playsound entity.chicken.egg master @a ~ ~ ~ 1 1.7
playsound entity.chicken.ambient master @a ~ ~ ~ 1 1.3
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.6
particle poof ~ ~ ~ 0.5 0.5 0.5 0.1 5 normal
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 5 normal

execute if entity @s[x_rotation=-90..-70] run summon chicken ~ ~ ~ {Motion:[0.0,1.5,0.0],Rotation:[0F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[x_rotation=-90..-70] run return fail

execute if entity @s[y_rotation=-33.75..-11.25] run summon chicken ~ ~ ~ {Motion:[0.75,0.85,2.25],Rotation:[-22.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-56.25..-33.75] run summon chicken ~ ~ ~ {Motion:[1.5,0.85,1.5],Rotation:[-45F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-78.75..-56.25] run summon chicken ~ ~ ~ {Motion:[2.25,0.85,0.75],Rotation:[-67.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-101.25..-78.75] run summon chicken ~ ~ ~ {Motion:[3.0,0.85,0.0],Rotation:[-90F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-123.75..-101.25] run summon chicken ~ ~ ~ {Motion:[2.25,0.85,-0.75],Rotation:[-112.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-146.25..-123.75] run summon chicken ~ ~ ~ {Motion:[1.5,0.85,-1.5],Rotation:[-135F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-168.75..-146.25] run summon chicken ~ ~ ~ {Motion:[0.75,0.85,-2.25],Rotation:[-157.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-191.25..-168.75] run summon chicken ~ ~ ~ {Motion:[0.0,0.85,-3.0],Rotation:[-180F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-213.75..-191.25] run summon chicken ~ ~ ~ {Motion:[-0.75,0.85,-2.25],Rotation:[157.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-236.25..-213.75] run summon chicken ~ ~ ~ {Motion:[-1.5,0.85,-1.5],Rotation:[135F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-258.75..-236.25] run summon chicken ~ ~ ~ {Motion:[-2.25,0.85,-0.75],Rotation:[112.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-281.25..-258.75] run summon chicken ~ ~ ~ {Motion:[-3.0,0.85,0.0],Rotation:[90F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-303.75..-281.25] run summon chicken ~ ~ ~ {Motion:[-2.25,0.85,0.75],Rotation:[67.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-326.25..-303.75] run summon chicken ~ ~ ~ {Motion:[-1.5,0.85,1.5],Rotation:[45F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
execute if entity @s[y_rotation=-349.75..-326.25] run summon chicken ~ ~ ~ {Motion:[-0.75,0.85,2.25],Rotation:[22.5F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}

execute if entity @s[y_rotation=-371.25..-349.75] run summon chicken ~ ~ ~ {Motion:[0.0,0.85,3.0],Rotation:[0F,0F],Silent:1b,Invulnerable:1b,Health:0.1f,Age:-10000,Tags:["launchRide"],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:4}]}
