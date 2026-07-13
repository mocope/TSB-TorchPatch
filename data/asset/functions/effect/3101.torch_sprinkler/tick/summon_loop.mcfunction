#> asset:effect/3101.torch_sprinkler/tick/summon_loop
#
# 
#
# @within function asset:effect/3101.torch_sprinkler/tick/summon_torch

# 松明を召喚
    summon falling_block ~ ~0.3 ~ {Tags:["3101.Init"], BlockState: {Name: "torch"}, DropItem: false, Time: 0}

# Motionを設定
    # 初期化
        data modify storage asset:temp Motion set value [0.0, 0.0, 0.0]
    # マクロを用いてField.Powerに応じて取得
        function asset:effect/3101.torch_sprinkler/tick/set_motion.m with storage asset:context this
    # 代入
        data modify entity @e[type=falling_block,distance=..1,tag=3101.Init,limit=1] Motion set from storage asset:temp Motion
    # ダメージを与えて描画を促す
        damage @e[type=falling_block,distance=..1,tag=3101.Init,limit=1] 0
    # initタグを削除
        tag @e[type=falling_block,distance=..1,tag=3101.Init,limit=1] remove 3101.Init

# reset
    data remove storage asset:temp Motion

# loop
    scoreboard players remove $Loop Temporary 1
    execute if score $Loop Temporary matches 1.. run function asset:effect/3101.torch_sprinkler/tick/summon_loop
