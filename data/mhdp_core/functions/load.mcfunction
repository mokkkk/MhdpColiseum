

# Scoreboard定義

    # Mhdp基本処理用
        scoreboard objectives add MhdpCore dummy

    # プレイヤー各処理用
        scoreboard objectives add MhdpPlayerUid dummy
        scoreboard objectives add MhdpUsedCoas minecraft.used:carrot_on_a_stick
        scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
        scoreboard objectives add MhdpDropEnderEye dropped:ender_eye

        scoreboard objectives add MhdpBlightFire dummy

    # プレイヤータイマー用
        scoreboard objectives add MhdpTDamage dummy
        scoreboard objectives add MhdpTAvoid dummy
        scoreboard objectives add MhdpTSneakInterval dummy
        scoreboard objectives add MhdpTDeathAnimation dummy

    # プレイヤー行動用
        scoreboard objectives add MhdpFuncSneakAvoid dummy

    # 武器処理用
        scoreboard objectives add MhdpStamina dummy
        scoreboard objectives add MhdpTStaminaPenalty dummy
        scoreboard objectives add MhdpWeaponCharge dummy
        scoreboard objectives add MhdpWeaponTimer dummy
        scoreboard objectives add MhdpWeaponDeactivateTimer dummy

    # モンスター処理用
        scoreboard objectives add AsaMatrix dummy
        scoreboard objectives add MhdpMonsterIndex dummy
        scoreboard objectives add MhdpPartsIndex dummy

    # TSBライブラリ用
        scoreboard objectives add Global dummy
        scoreboard objectives add Temporary dummy
        scoreboard objectives add Const dummy
        scoreboard objectives add UserID dummy
        scoreboard objectives add AttackedEntity dummy
        scoreboard objectives add Lib dummy
        scoreboard players set $2 Const 2
        scoreboard players set $2^15 Const 32768
        scoreboard players set $2^16 Const 65536
        scoreboard players set $10 Const 10
        scoreboard players set $100 Const 100

# item置き換え用
    forceload add -1 -1 1 1
    setblock 0 0 0 lime_shulker_box

# モンスター肉質初期化
    function mhdp_core:init/monster
