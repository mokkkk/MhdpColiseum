#> mhdp_weapons:core/interruption/
#
# 各武器の中断処理呼び出し

# アイテムデータ取得準備
    function oh_my_dat:please
    
# 共通
    # 一瞬動きを止める
        tp @s @s
    # アーマー解除
        tag @s remove PlyArmorSuper
        tag @s remove PlyArmorHyper
    # 抜刀攻撃タグ消去
        tag @s remove PlyDrawAttack
        tag @s remove PlyDrawAttackWirebug
    # 右クリック保存タグ消去
        tag @s remove RClicked
    # ヒットストップ用タグ消去
        tag @s remove AttackHit

# 1：弓
    execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/96_interruption/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/96_interruption/

# 3：片手剣
    execute if entity @s[tag=PlyWpnSsword] run function mhdp_weapons:weapon/short_sword/96_interruption/
