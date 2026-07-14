# $say #> asset:object/3102.steal_glow_jewel/tick/circle/loop $(Distance) $(Rotate)
#
# 
# @input args
#   Distance: double
#   Rotate: int
# @within function asset:object/3102.steal_glow_jewel/tick/circle/

# count
    scoreboard players remove $LoopCount Temporary 1
    execute if score $LoopCount Temporary matches ..-1 run return 1

$execute positioned ^ ^ ^$(Distance) run function asset:object/3102.steal_glow_jewel/tick/circle/point

$execute rotated ~$(Rotate) ~ run function asset:object/3102.steal_glow_jewel/tick/circle/loop.m with storage asset:temp Argument
