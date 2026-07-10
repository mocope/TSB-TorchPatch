#> asset:artifact/3102.torch_sprinkler_ex/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3102.torch_sprinkler_ex/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 松明を消す
    clear @s torch 16

# 3101,3103を削除
    # 3101
        data modify storage api: Argument set value {ID: 3101}
        function api:entity/mob/effect/remove/from_id
        function api:entity/mob/effect/reset
    # 3103
        data modify storage api: Argument set value {ID: 3103}
        function api:entity/mob/effect/remove/from_id
        function api:entity/mob/effect/reset

# effectを付与
    data modify storage api: Argument.ID set value 3102
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
