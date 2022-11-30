#> asa_animator:reus/manager/1_change/target
#
# 火竜 ターゲットリセット処理

# ターゲットリセット
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget

# ターゲット探索
tag @e[type=slime,tag=MonsterParts,tag=!ReusParts,tag=!NotTarget,tag=!ReiaParts] add ReusTarget
tag @a[tag=MnsTarget] add ReusTarget
# ターゲット決定
execute if predicate asa_animator:random/010 if entity @e[type=!player,tag=ReusTarget] run tag @e[tag=ReusTarget,tag=!NotTarget,sort=random,limit=1] add ReusAttackTarget
execute unless entity @a[tag=ReusAttackTarget] run tag @a[tag=ReusTarget,tag=!NotTarget,sort=random,limit=1] add ReusAttackTarget
execute unless entity @e[tag=ReusAttackTarget] run tag @e[tag=ReusTarget,sort=random,limit=1] add ReusAttackTarget