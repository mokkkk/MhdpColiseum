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

# テンプレート
# data modify storage mh_dp:quests List append value {Index:999,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:3,RewardItems:[],Movie:0b,MovieId:-1,display:{Name:'[{"text":"-","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・","italic":false}']},NameNew:'{"text":"-(NEW)","italic":false}',NameClear:'{"text":-(CLEAR)","italic":false}'}

## 0：訓練
# なにもなし
    data modify storage mh_dp:quests List append value {Index:0,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[],MonsterCount:1,Timer:999,HpMult:100,Reward:15,RewardItems:[],Movie:0b,MovieId:-1,display:{Name:'[{"text":"訓練","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・何もなし","italic":false}']},NameNew:'{"text":"訓練(NEW)","italic":false}',NameClear:'{"text":"訓練(CLEAR)","italic":false}'}

## 1：火竜
# ノーマル・大闘技場・[火竜]・15分・HP100%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:1,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:3,RewardItems:[{Name:"Reus",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"火竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"火竜(NEW)","italic":false}',NameClear:'{"text":"火竜(CLEAR)","italic":false}'}

## 2：雷狼竜
# ノーマル・大闘技場・[雷狼竜]・999分・HP10000%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:2,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Zinogre",Condition:0,Target:-1}],MonsterCount:1,Timer:999,HpMult:10000,Reward:3,RewardItems:[{Name:"Zinogre",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"雷狼竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・雷狼竜の討伐","italic":false}']},NameNew:'{"text":"雷狼竜(NEW)","italic":false}',NameClear:'{"text":"雷狼竜(CLEAR)","italic":false}'}

## 1：角竜
# ノーマル・大闘技場・[角竜]・15分・HP100%・報酬3Z・ムービー無
    # data modify storage mh_dp:quests List append value {Index:1,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Diablos",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:3,RewardItems:[{Name:"Diablos",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"角竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・角竜の討伐","italic":false}']},NameNew:'{"text":"角竜(NEW)","italic":false}',NameClear:'{"text":"角竜(CLEAR)","italic":false}'}

## 2：火竜（ハード）
# ハード・大闘技場・[火竜]・15分・HP100%・報酬60Z・ムービー無
    # data modify storage mh_dp:quests List append value {Index:2,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:1,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:60,RewardItems:[{Name:"Reus",Count:16,Min:16}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"つよい火竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"つよい火竜(NEW)","italic":false}',NameClear:'{"text":"つよい火竜(CLEAR)","italic":false}'}

## 3：火竜と角竜
# ノーマル・大闘技場・[火竜,角竜]・15分・HP70%・報酬60Z・ムービー無
    # data modify storage mh_dp:quests List append value {Index:3,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1},{Name:"Diablos",Condition:2,Target:1}],MonsterCount:2,Timer:15,HpMult:70,Reward:60,RewardItems:[{Name:"Reus",Count:7,Min:3},{Name:"Diablos",Count:7,Min:3}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"火竜＆角竜","italic":false}]',Lore:['{"text":"目標："}','{"text":"・全てのモンスターの討伐","italic":false}']},NameNew:'{"text":"火竜＆角竜(NEW)","italic":false}',NameClear:'{"text":"火竜＆角竜(CLEAR)","italic":false}'}

## 5：制限時間テスト
# ノーマル・大闘技場・[火竜]・1分・HP100%・報酬3Z・ムービー無
    # data modify storage mh_dp:quests List append value {Index:5,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:1,HpMult:100,Reward:3,RewardItems:[{Name:"Reus",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"制限時間テスト","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"制限時間テスト(NEW)","italic":false}',NameClear:'{"text":"制限時間テスト(CLEAR)","italic":false}'}

## 6：めっちゃかたい火竜
# ノーマル・大闘技場・[火竜]・999分・HP1000%・報酬3Z・ムービー無
    # data modify storage mh_dp:quests List append value {Index:6,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:999,HpMult:10000,Reward:3,RewardItems:[{Name:"Reus",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"かたい火竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"かたい火竜(NEW)","italic":false}',NameClear:'{"text":"かたい火竜(CLEAR)","italic":false}'}

say クエストデータstorageを初期化しました
function mhdp_core:phase/0_village/villager/quest/