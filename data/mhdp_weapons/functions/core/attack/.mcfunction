#> mhdp_weapons:core/attack/
#
# 攻撃時処理

# 攻撃対象の取得
    tag @s add this
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim

# Mhdp武器の場合
    execute if entity @s[tag=PlyWeaponDrawing] run function mhdp_weapons:core/attack/attack_by_mhdpweapon

# 汎用武器の場合
    # execute if entity @s[tag=!PlyWeaponDrawing] run function mhdp_weapons:core/attack/attack_by_sword

# テスト
    # execute as @e[tag=Victim] at @s run function mhdp_core:monster/damage/

# 終了
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove Victim
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove AttackedEntity
    tag @s remove this
