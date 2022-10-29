#> mhdp_core:init/quest_data
#
# クエストデータ初期化

# 出現モンスター：
# - 0：最初から
# - 1：Targetモンスターが倒されたら
# - 2：TargetモンスターのHPが50%以下になったら
# - 3：一定時間経過

# storage初期化
    data remove storage mh_dp:quests List
    data modify storage mh_dp:quests List set value []

## 0：テスト用 
# ノーマル・大闘技場・[火竜]・15分・HP100%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:0,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:3,Movie:0b,MovieId:-1}

## 1：テスト用
# ノーマル・大闘技場・[角竜]・15分・HP100%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:1,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Diablos",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:3,Movie:0b,MovieId:-1}

## 2：テスト用
# ハード・大闘技場・[火竜]・15分・HP100%・報酬60Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:2,Started:0b,Cleared:0b,QuestRank:1,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:60,Movie:0b,MovieId:-1}

## 3：テスト用
# ノーマル・大闘技場・[火竜,角竜]・15分・HP70%・報酬60Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:3,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1},{Name:"Diablos",Condition:2,Target:1}],MonsterCount:2,Timer:15,HpMult:70,Reward:60,Movie:0b,MovieId:-1}

## 4：テスト用 
# なにもなし
    data modify storage mh_dp:quests List append value {Index:4,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[],MonsterCount:1,Timer:15,HpMult:100,Reward:15,Movie:0b,MovieId:-1}

say クエストデータstorageを初期化しました