script_key = "UQpESicdZRDIRqXhxUnrExkvHcjGTpDz"

getgenv().PS99Config = {

    ["FPS Cap"] = 3,

    ["Webhook"] = {
        ["Webhook URL"] = "",
        ["ID"]          = { "" },
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
        ["Mail To"]       = "",
        ["Items To Mail"] = {
            ["Huge Soccer Cat"] = 1,
            ["Titanic"]         = "all",
            "Huge",
        },
        ["Mail Message"]  = "gg",
    },
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/f906304da84f44c66d2f5184a409f4c5.lua"))()