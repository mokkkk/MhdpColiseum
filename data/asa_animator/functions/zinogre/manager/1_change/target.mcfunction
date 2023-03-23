#> asa_animator:zinogre/manager/1_change/target
#
# 雷狼竜 ターゲットリセット処理

# ターゲットリセット
    scoreboard players add #mhdp_zinogre_targetcount AsaMatrix 1
    execute if score #mhdp_zinogre_targetcount AsaMatrix matches 3.. run tag @s add ChangeTarget
    execute if score #mhdp_zinogre_targetcount AsaMatrix matches 3.. run scoreboard players set #mhdp_zinogre_targetcount AsaMatrix 0
    tag @e[tag=ZinogreTarget] remove ZinogreTarget
    execute if entity @s[tag=ChangeTarget] run tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget

# ターゲット探索
    tag @e[type=slime,tag=MonsterParts,tag=!ZinogreParts,tag=!NotTarget,tag=!ReiaParts] add ZinogreTarget
    tag @a[tag=MnsTarget] add ZinogreTarget
# ターゲット決定
    execute unless entity @e[tag=ZinogreAttackTarget] if predicate asa_animator:random/010 if entity @e[type=!player,tag=ZinogreTarget] run tag @e[tag=ZinogreTarget,tag=!NotTarget,sort=random,limit=1] add ZinogreAttackTarget
    execute unless entity @e[tag=ZinogreAttackTarget] run tag @a[tag=ZinogreTarget,tag=!NotTarget,sort=random,limit=1] add ZinogreAttackTarget
    execute unless entity @e[tag=ZinogreAttackTarget] run tag @e[tag=ZinogreTarget,sort=random,limit=1] add ZinogreAttackTarget

# 終了
    tag @s remove ChangeTarget
