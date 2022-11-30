#> mhdp_core:phase/3_quest/check/monsters/summon
#
# Phase3_クエスト モンスター乱入 分岐

# 火竜
    execute if data storage mhdp_core:temp Temp{Name:"Reus"} run function asa_animator:reus/manager/0_init/1_intrusion/

# 角竜
    # execute if data storage mhdp_core:temp Temp{Name:"Diablos"} run function asa_animator:diablos/manager/intrusion
