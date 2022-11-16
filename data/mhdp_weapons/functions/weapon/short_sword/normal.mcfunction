#> mhdp_weapons:weapon/short_sword/normal
#
# 片手剣のメイン処理・通常
#


#declare tag WpnSswordGuard 大剣ガード中
#declare tag RClicked 右クリック入力保存

# 0_常時実行：
    function mhdp_weapons:weapon/short_sword/0_tick/

# 終了
    tag @s remove IsDrawing
