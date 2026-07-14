#> asset:object/3102.steal_glow_jewel/tick/remove/log2
#
# 
#
# @within function asset:object/3102.steal_glow_jewel/tick/remove/

scoreboard players add $Stack Temporary 1

scoreboard players operation $LightSourceCount Temporary /= $2 Const

execute if score $LightSourceCount Temporary matches 1.. run function asset:object/3102.steal_glow_jewel/tick/remove/log2
