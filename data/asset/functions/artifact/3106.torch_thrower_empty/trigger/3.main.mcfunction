#> asset:artifact/3106.torch_thrower_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3106.torch_thrower_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 松明袋を消費
    clear @s carrot_on_a_stick{TSB:{ID: 1285}} 1

    playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.5
    playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.6

    data modify storage api: Argument.ID set value 3105
    function api:artifact/replace/from_id
