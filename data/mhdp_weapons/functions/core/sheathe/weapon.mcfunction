#> mhdp_weapons:core/sheathe/weapon
#
# 各武器の納刀処理呼び出し

# 共通
    # 抜刀攻撃タグ消去
        tag @s remove PlyDrawAttack
        tag @s remove PlyDrawAttackWirebug
    # 右クリック保存タグ消去
        tag @s remove RClicked
    # ヒットストップ用タグ消去
        tag @s remove AttackHit

# 1：弓
    execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/98_sheathe/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/98_sheathe/
