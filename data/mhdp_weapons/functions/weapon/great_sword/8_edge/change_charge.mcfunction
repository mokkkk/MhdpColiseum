#> mhdp_weapons:weapon/great_sword/8_edge/change_charge
#
# 大剣：ハンティングエッジ → 溜め

# タグ消去
    tag @s remove WpnGsword8Edge
    tag @s remove PlyDrawAttack

# 浮遊エフェクト付与
    execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:50b,Duration:4,ShowParticles:0b}]}

# 行動開始
    function mhdp_weapons:weapon/great_sword/2_charge/start
