#> asset:object/3101.torch_thrower_ball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/3101/init

#> private
# @private
    #declare score_holder $OwnerID
    #declare tag SpreadMarker
    #declare tag 3101.Owner

# タグ付け。initタグくれよ
    tag @s add 3101.Init

    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run tag @s add 3101.Owner

# 前方拡散してから
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3
    data modify storage lib: Argument.Spread set value 3
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] rotated as @p[tag=3101.Owner] run function lib:forward_spreader/circle

# モーションでぶっ飛ばす。飛ぶのは下の雪玉
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] feet as @e[type=snowball,tag=3101.Snowball,tag=3101.Init,distance=..3,sort=nearest,limit=1] run function lib:motion/
    data remove storage lib: Argument
# 描画を促す
    damage @e[type=snowball,tag=3101.Snowball,tag=3101.Init,distance=..3,sort=nearest,limit=1] 0

# タグ消す
    tag @s remove 3101.Init
    tag @p[tag=3101.Owner] remove 3101.Owner
    tag @e[type=snowball,tag=3101.Snowball,tag=3101.Init,distance=..3,sort=nearest,limit=1] remove 3101.Init

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
