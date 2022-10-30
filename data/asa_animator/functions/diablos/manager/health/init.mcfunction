
# tsb用init
    execute as @e[type=slime,tag=DiablosHealth] run function mob_manager:init/

# ID割り振り
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=DiablosHealth] MhdpMonsterIndex 1
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=DiablosHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=DiablosHealth,tag=BodyParts] MhdpPartsIndex 1
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=DiablosHealth,tag=LegParts] MhdpPartsIndex 2
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=DiablosHealth,tag=TailParts] MhdpPartsIndex 3
