# ダメージ
tag @s add D_DiablosHead
function mhdp_core:player/damage/attack
tag @s remove D_DiablosHead
# ヒット時，移動速度低下
execute unless entity @s[scores={MhdpTAvoid=1..}] run effect give @s slowness 1 5 true