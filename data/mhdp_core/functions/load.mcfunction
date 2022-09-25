

# Scoreboard定義

    # Mhdp基本処理用
        scoreboard objectives add MhdpCore dummy

    # プレイヤー各処理用
        scoreboard objectives add MhdpPlayerUid dummy
        scoreboard objectives add MhdpUsedCoas minecraft.used:carrot_on_a_stick
        scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
        scoreboard objectives add MhdpDropEnderEye dropped:ender_eye

    # プレイヤータイマー用
        scoreboard objectives add MhdpTDamage dummy
        scoreboard objectives add MhdpTAvoid dummy
        scoreboard objectives add MhdpTSneakInterval dummy

    # プレイヤー行動用
        scoreboard objectives add MhdpFuncSneakAvoid dummy

    # モンスター処理用
        scoreboard objectives add AsaMatrix dummy

# item置き換え用
    forceload add -1 -1 1 1
    setblock 0 0 0 lime_shulker_box
