#> asset:effect/3104.steal_glow_jewel/register
#
# Effectのデータを指定
#
# @within function asset:effect/3104.steal_glow_jewel/_/register

# ExtendsSafe (boolean) (default = false)
    data modify storage asset:effect ExtendsSafe set value false
# ID (int)
    data modify storage asset:effect ID set value 3104
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"光喰らいの宝玉"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"与ダメージが Stack × 3% 増加する"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 600
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "forceReplace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "forceReplace"
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 10
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value true
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value true

# フィールド
    # data modify storage asset:effect Field set value {}
