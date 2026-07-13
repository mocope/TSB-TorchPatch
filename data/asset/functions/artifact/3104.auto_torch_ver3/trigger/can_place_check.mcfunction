#> asset:artifact/3104.auto_torch_ver3/trigger/can_place_check
#
# 
#
# @within function asset:artifact/3104.auto_torch_ver3/trigger/3.main

# 空気でなければ設置できない
    execute unless block ~ ~ ~ #lib:air run return fail

# 松明に接していれば設置できない
    execute if predicate torch_patch:torch_check run return fail

# 3m以内に松明が存在していれば設置しづらい
    # 数を取得
        execute store result score $Count Temporary run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 0 314 0 filtered #lib:torches force
    # 掃除
        fill 0 314 0 4 319 4 air replace #lib:torches
    # 1個以上であれば90%の確率で失敗
        execute if score $Count Temporary matches 1.. if predicate lib:random_pass_per/90 run return fail
    # 2個以上であれば更に75%の確率で失敗(2.5%)
        execute if score $Count Temporary matches 2.. if predicate lib:random_pass_per/75 run return fail

# # 明るすぎれば設置しづらい
#     execute if predicate lib:light_level/max/12 if predicate lib:random_pass_per/80 run return fail

# 左右前後の壁、或いは地面がフルブロックであれば設置
    execute if block ~ ~-1 ~ #lib:full_collision run return 1
    execute if block ~1 ~ ~ #lib:full_collision run return 2
    execute if block ~-1 ~ ~ #lib:full_collision run return 3
    execute if block ~ ~ ~1 #lib:full_collision run return 4
    execute if block ~ ~ ~-1 #lib:full_collision run return 5

# どこにも貼り付けられなければ失敗
    return fail
