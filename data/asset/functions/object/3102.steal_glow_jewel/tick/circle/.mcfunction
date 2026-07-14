#> asset:object/3102.steal_glow_jewel/tick/circle/
#
# 
#
# @within function asset:object/3102.steal_glow_jewel/tick/

# 距離と回転回数、速度を取得
    # 距離
        execute store result storage asset:temp Argument.Distance double 0.8 run scoreboard players get @s General.Object.Tick
    # 回転回数 距離×4
        scoreboard players operation $LoopCount Temporary = @s General.Object.Tick
        scoreboard players operation $LoopCount Temporary += $LoopCount Temporary
        scoreboard players operation $LoopCount Temporary += $LoopCount Temporary
        scoreboard players operation $LoopCount Temporary += $LoopCount Temporary
    # 回転速度(e4) 360/回転回数
        scoreboard players set $Rotate Temporary 3600000
        scoreboard players operation $Rotate Temporary /= $LoopCount Temporary
        execute store result storage asset:temp Argument.Rotate double 0.0001 run scoreboard players get $Rotate Temporary

# 現在のLightSourceCountを取得
    execute store result score $LightSourceCount Temporary run data get storage asset:context this.LightSourceCount

# loop
    function asset:object/3102.steal_glow_jewel/tick/circle/loop.m with storage asset:temp Argument

# TorchCountをFieldに戻す
    execute store result storage asset:context this.LightSourceCount int 1 run scoreboard players get $LightSourceCount Temporary
    
# reset
    scoreboard players reset $LightSourceCount Temporary
    scoreboard players reset $Rotate Temporary
    scoreboard players reset $LoopCount Temporary
    data remove storage asset:temp Argument
