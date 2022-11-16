#> mhdp_weapons:weapon/short_sword/96_interruption/
#
# 片手剣の中断処理

# 行動制限
     scoreboard players set @s MhdpWeaponDeactivateTimer 10

# リセット処理
     function mhdp_weapons:weapon/short_sword/99_reset/
