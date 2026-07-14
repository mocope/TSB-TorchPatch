#> asset:artifact/3105.torch_thrower/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3105.torch_thrower/trigger/2.check_condition

#> Private
# @private
    #declare tag SpreadMarker
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1.6
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 3106
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# 召喚
    data modify storage api: Argument.ID set value 3101
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon
