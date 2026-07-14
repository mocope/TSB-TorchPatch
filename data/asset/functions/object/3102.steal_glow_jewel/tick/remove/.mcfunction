#> asset:object/3102.steal_glow_jewel/tick/remove/
#
# 
#
# @within function asset:object/3102.steal_glow_jewel/tick/

# 光源削除数を取得
    execute store result score $LightSourceCount Temporary run data get storage asset:context this.LightSourceCount

# 数に応じてバフ
    data modify storage api: Argument.ID set value 3104
    # stack = floor(log2(LightSourceCount))
        scoreboard players operation $LightSourceCount Temporary /= $2 Const
        function asset:object/3102.steal_glow_jewel/tick/remove/log2
        execute store result storage api: Argument.Stack int 1 run scoreboard players get $Stack Temporary
    # 実行プレイヤーを取得
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run tag @s add 3104.Owner
    # 付与
        execute as @p[tag=3104.Owner] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# reset
    scoreboard players reset $Stack Temporary
    scoreboard players reset $OwnerID Temporary
    tag @p[tag=3104.Owner] remove 3104.Owner

# 削除
    kill @s
