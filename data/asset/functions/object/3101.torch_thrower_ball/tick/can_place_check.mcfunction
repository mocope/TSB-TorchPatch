#> asset:artifact/3101.torch_thrower_ball/trigger/can_place_check
#
# 
#
# @within function asset:artifact/3101.torch_thrower_ball/tick/

# サバイバルエリアでなければ設置できない
    execute unless predicate api:area/is_breakable run return fail

# 空気でなければ設置できない
    execute unless block ~ ~ ~ #lib:air run return fail

# 左右前後の壁、或いは地面がフルブロックであれば設置
    execute if block ~ ~-1 ~ #lib:full_collision run return 1
    execute if block ~1 ~ ~ #lib:full_collision run return 2
    execute if block ~-1 ~ ~ #lib:full_collision run return 3
    execute if block ~ ~ ~1 #lib:full_collision run return 4
    execute if block ~ ~ ~-1 #lib:full_collision run return 5

# どこにも貼り付けられなければ失敗
    return fail
