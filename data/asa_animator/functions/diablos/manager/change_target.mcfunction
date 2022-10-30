
# ターゲットリセット
tag @e[tag=DiablosTarget] remove DiablosTarget
tag @e[tag=DiablosAttackTarget] remove DiablosAttackTarget

# ターゲット探索
tag @e[type=slime,tag=MonsterParts,tag=!DiablosParts,tag=!NotTarget] add DiablosTarget
tag @a[tag=MnsTarget] add DiablosTarget
# ターゲット決定
execute if predicate asa_animator:random/010 if entity @e[type=!player,tag=DiablosTarget] run tag @e[tag=DiablosTarget,tag=!NotTarget,sort=random,limit=1] add DiablosAttackTarget
execute unless entity @a[tag=DiablosAttackTarget] run tag @a[tag=DiablosTarget,tag=!NotTarget,sort=random,limit=1] add DiablosAttackTarget
execute unless entity @e[tag=DiablosAttackTarget] run tag @e[tag=DiablosTarget,sort=random,limit=1] add DiablosAttackTarget