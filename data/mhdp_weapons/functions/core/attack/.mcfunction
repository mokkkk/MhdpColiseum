#> mhdp_weapons:core/attack/
#
# 攻撃時処理

# 攻撃対象の取得
    tag @s add this
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim

# Mhdp武器の場合
    execute if entity @s[tag=PlyWeaponDrawing] run function mhdp_weapons:core/attack/attack_by_mhdpweapon

# 汎用武器の場合
    execute if entity @s[tag=!PlyWeaponDrawing] run function mhdp_weapons:core/attack/attack_by_sword

# 終了
    execute at @e[tag=Victim] run particle flame ~ ~ ~ 0 0 0 1 100
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove Victim
    tag @s remove this

say 攻撃