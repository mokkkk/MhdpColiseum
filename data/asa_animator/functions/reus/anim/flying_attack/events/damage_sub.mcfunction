# ダメージ
tag @s add D_ReusAttack
execute unless entity @s[scores={MhdpTAvoid=1..}] run effect give @s poison 10 0
function mh_dp:damage/attack
tag @s remove D_ReusAttack