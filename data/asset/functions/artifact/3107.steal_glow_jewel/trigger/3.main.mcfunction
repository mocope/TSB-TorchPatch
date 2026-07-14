#> asset:artifact/3107.steal_glow_jewel/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3107.steal_glow_jewel/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 夜にする
    time set midnight

# 暗視解除
    data modify storage api: Argument.ID set value 191
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# objectが消せないので自座標の光源を消す
    execute if predicate torch_patch:nearest_void run fill ~ -63 ~ ~ ~29 ~ air replace #lib:light_source
    execute unless predicate torch_patch:nearest_void run fill ~ ~-29 ~ ~ ~29 ~ air replace #lib:light_source

# 召喚
    data modify storage api: Argument.ID set value 3102
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~0.1 ~ run function api:object/summon
