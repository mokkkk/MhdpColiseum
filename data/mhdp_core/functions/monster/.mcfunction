#> mhdp_core:monster/
#
# 各モンスターが毎tick実行する処理

# 火竜
    execute if entity @s[tag=ReusRoot] run function asa_animator:reus/main

# 角竜
    execute if entity @s[tag=DiablosRoot] run function asa_animator:diablos/main
