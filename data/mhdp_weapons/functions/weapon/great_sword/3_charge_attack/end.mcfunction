#> mhdp_weapons:weapon/great_sword/3_charge_attack/end
#
# 大剣：溜め斬り終了

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# タグ更新
    tag @s remove WpnGswordChargeAttack
    tag @s remove PlyDrawAttack
    
# 溜め段階タグ消去
    tag @s remove WpnGswordCharge1
    tag @s remove WpnGswordCharge2
    tag @s remove WpnGswordCharge3
