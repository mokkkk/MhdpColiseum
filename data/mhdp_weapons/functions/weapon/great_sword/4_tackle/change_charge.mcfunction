#> mhdp_weapons:weapon/great_sword/4_tackle/change_charge
#
# 大剣：タックル → 溜め

# タグ更新
    tag @s remove WpnGswordTackle

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# ハイパーアーマー終了
    tag @s remove PlyArmorHyper

# marker削除
    kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# 遷移
    function mhdp_weapons:weapon/great_sword/2_charge/start
