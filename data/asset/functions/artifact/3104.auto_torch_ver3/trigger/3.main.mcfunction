#> asset:artifact/3104.auto_torch_ver3/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3104.auto_torch_ver3/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    # function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# markerをランダムに飛ばし、設置可能であれば設置
    tp 0-0-0-0-0 ~ ~ ~
    data modify storage lib: Argument.Bounds set value [[10d, 10d], [3d, 5d], [10d, 10d]]
    execute as 0-0-0-0-0 run function lib:spread_entity/
    execute store result storage asset:temp Type int 1 at 0-0-0-0-0 run function asset:artifact/3104.auto_torch_ver3/trigger/can_place_check
    execute unless data storage asset:temp {Type: 0} at 0-0-0-0-0 run function asset:artifact/3104.auto_torch_ver3/trigger/place

# 設置に成功した場合のみクールダウンを発生させる（たぶんよくないやり方だけどゆるして）
    execute unless data storage asset:temp {Type: 0} run function asset:artifact/common/use/hotbar

# reset
    execute in minecraft:overworld run tp 0-0-0-0-0 0.0 0.0 0.0
    data remove storage asset:temp Type
    scoreboard players reset $Count Temporary
    scoreboard players reset $WallTorchCount Temporary
