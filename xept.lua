script_key = "GQuLsGHhekqCzSMgjKmAOMBEyVAtnrKO"

getgenv().AEConfig = {
    ["Summon At Gems"] = 10000,
    ["Set FPS"] = 60,

    ["Target Summon"] = {
        ["Enabled"] = true,
        ["Start Gems"] = 10000,
        ["Before Raids"] = true,
        ["Fallback"] = "Farm Kenpachi",
    },

    ["Target Units"] = {
        ["Shadow"] = 10,
    },

    -- After obtaining Megumi, farm to an account Level or Gems target.
    ["After Unit Farm"] = {
        ["Enabled"] = true,
        ["Unit"] = "Megumi",
        ["Goal"] = "Gems", -- "Level" or "Gems"
        ["Target"] = 100000,
    },

    ["Raids"] = true,
    ["Raid Minimum Level"] = 50,

    ["Raid Equipment"] = {
        ["Enabled"] = true,
    },

    ["Trait Rerolls"] = {
        ["Enabled"] = true,
        ["Targets"] = {
            ["Kenpachi"] = { "Unbound" },
            ["Shadow"] = { "Unbound" },
        },
    },

    ["Webhook"] = {
        ["Webhook URL"] = "https://discord.com/api/webhooks/1530522410409922581/G2w_ul_wURlOtTJn5OSIMXV4zE0cD8rfReptx_GcnBAI8LUXF9aj42_ZXuJOE2Dy9Yf2",
        ["ID"] = {1464473600940838997},
        ["Rewards Logger"] = true,

        ["Notify Units"] = {
            "Shadow",
            "Shiny Shadow",
        },

        ["Notify Rewards"] = {
            "8th Sword",
            "8th Sword Shiny",
        },
    },
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/fd82c07ea1ee57c9f26efcf1498751e8.lua"))()