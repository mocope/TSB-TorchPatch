#> asset:effect/3102.torch_sprinkler_ex/register
#
# Effectのデータを指定
#
# @within function asset:effect/3102.torch_sprinkler_ex/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 3101
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 3102
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2400
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド
    data modify storage asset:effect Field set value {Power: 0.015, Tick: 5, Count: 5}
