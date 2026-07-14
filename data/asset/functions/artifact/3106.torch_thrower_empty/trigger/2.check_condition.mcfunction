#> asset:artifact/3106.torch_thrower_empty/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3106.torch_thrower_empty/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 松明袋を持ってるかチェック
    execute store result score $Count Temporary run clear @s carrot_on_a_stick{TSB:{ID: 1285}} 0
    execute if score $Count Temporary matches ..0 run tag @s remove CanUsed
    execute if score $Count Temporary matches ..0 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $Count Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3106.torch_thrower_empty/trigger/3.main
