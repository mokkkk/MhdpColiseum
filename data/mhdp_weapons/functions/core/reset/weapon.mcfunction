#> mhdp_weapons:core/reset/weapon
#
# 各武器のリセット処理のみ呼び出し

# 共通
    # アーマー解除
        tag @s remove PlyArmorSuper
        tag @s remove PlyArmorHyper
    # 抜刀攻撃タグ消去
        tag @s remove PlyDrawAttack
    # 右クリック保存タグ消去
        tag @s remove RClicked
        
# 1：弓
    execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/99_reset/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/99_reset/
