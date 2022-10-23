
# tsb用init
    execute as @e[type=slime,tag=ReusHealth] run function mob_manager:init/

# ID割り振り
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth] MhdpMonsterIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=BodyParts] MhdpPartsIndex 1
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=LegParts] MhdpPartsIndex 2
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=TailParts] MhdpPartsIndex 3
