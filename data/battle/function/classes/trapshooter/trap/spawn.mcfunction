data merge entity @s {width:1f,height:0.2f,Tags:["exposure_trap","wt"]}
$tag @s add $(trap_team)

$summon block_display ~ ~0.1 ~ {Tags:[wt,wt_change],Passengers:[{id:"minecraft:block_display",block_state:{Name:"$(trap_block)"},Tags:[wt],transformation:[1f,0f,0f,-0.5f,0f,0.15f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}]}