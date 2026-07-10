#> asset:artifact/3103.torch_sprinkler_insane/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3103.torch_sprinkler_insane/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 松明を持ってるかチェック
    execute store result score $Count Temporary run clear @s torch 0
    execute if score $Count Temporary matches ..255 run tag @s remove CanUsed
    execute if score $Count Temporary matches ..255 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $Count Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# サバイバルエリアか？
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/3103.torch_sprinkler_insane/trigger/3.main
