#> mhdp_core:player/sneak/avoid/start
#
# プレイヤースニーク検知用に実行する処理

# タグ付与
    tag @s add PlySneakDouble

# 以下の条件時，ステップ回避処理の準備開始
# ステップ回避ロック中じゃない
# 武器操作が有効である
    execute if entity @s[tag=!PlySneakAvoidLock,scores={MhdpWeaponDeactivateTimer=..0}] run function mhdp_core:player/sneak/avoid/start_
