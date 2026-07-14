#> asset:object/3102.steal_glow_jewel/tick/circle/point
#
# 
#
# @within function asset:object/3102.steal_glow_jewel/tick/circle/loop.m

# particle
    particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 1
    # particle end_rod ~ ~ ~ 0.0 2.0 0.0 0 10

# fill
    execute if predicate torch_patch:nearest_void store result score $FillCount Temporary run fill ~ -63 ~ ~ ~29 ~ air replace #lib:light_source
    execute unless predicate torch_patch:nearest_void store result score $FillCount Temporary run fill ~ ~-29 ~ ~ ~29 ~ air replace #lib:light_source
    scoreboard players operation $LightSourceCount Temporary += $FillCount Temporary

# reset
    scoreboard players reset $FillCount Temporary
