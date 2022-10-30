#> mhdp_weapons:tick/
#
# 毎tick実行される処理

# アイテムデータ取得準備
    function oh_my_dat:please

# 武器中断有無取得
    execute if entity @s[tag=!PlyWeaponDeactivate,scores={MhdpWeaponDeactivateTimer=1..}] run tag @s add PlyWeaponDeactivate
    execute if entity @s[tag=PlyWeaponDeactivate,scores={MhdpWeaponDeactivateTimer=1..}] run scoreboard players remove @s MhdpWeaponDeactivateTimer 1
    execute if entity @s[tag=PlyWeaponDeactivate,scores={MhdpWeaponDeactivateTimer=..0}] run tag @s remove PlyWeaponDeactivate

# 共通処理（UI）
    function mhdp_weapons:ui/

# 直接攻撃時処理
    execute if entity @s[advancements={mhdp_core:player/hurt/player_hurt_entity=true}] run function mhdp_weapons:core/attack/

# 武器メイン処理
    function mhdp_weapons:weapon/

# 武器納刀・抜刀処理
    function mhdp_weapons:core/

# 終了
    tag @s remove PlyStaminaNotRegen
