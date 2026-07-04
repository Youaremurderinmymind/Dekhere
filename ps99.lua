script_key = "UQpESicdZRDIRqXhxUnrExkvHcjGTpDz"

getgenv().PS99Config = {

    ["FPS Cap"] = 9,

    ["Webhook"] = {
        ["Webhook URL"] = "https://discord.com/api/webhooks/1521062740809093204/41Uf_1zrFZK-QI3oNN_lhPVVuG7BN2zOssYUKpiW5sR2Vpgcg5CHmCR0EOV1zuvCmBzJ",
        ["ID"]          = { "1464473600940838997" },
        ["Alert Huges"] = true,
    },

    ["Yeet Upgrades"] = {
        ["Power Strike Meter"] = 99,
        ["Better Yeet Egg"]    = 99,
        ["Critical Throw"]     = 99,
        ["Trickshot"]          = 99,
        ["Power Strike"]       = 99,
        ["Orb Strength"]       = 99,
        ["Orb Reach"]          = 0,
    },

    ["Items"] = {
        ["Use Cleats"]               = true,
        ["Use Soccer Net"]           = true,
        ["Open Soccer Gift"]         = true,
        ["Auto Open World Cup Gift"] = true,
    },

    ["Mail"] = {
        ["Claim Mails"]   = true,
        ["Mail To"]       = "icemlg326",
        ["Items To Mail"] = {
            ["Huge Soccer Cat"] = 1,
            ["Titanic"]         = "all",
            "Huge",
        },
        ["Mail Message"]  = "Xept",
    },
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/f906304da84f44c66d2f5184a409f4c5.lua"))()