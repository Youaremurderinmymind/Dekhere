script_key = "GQuLsGHhekqCzSMgjKmAOMBEyVAtnrKO"

getgenv().AEConfig = {
    ["Summon At Gems"] = 50000,
    ["Set FPS"] = 0, -- 0 = no FPS cap

    ["Target Summon"] = {
        ["Enabled"] = true,
        ["Start Gems"] = 50000,
        ["Before Raids"] = true,
        ["Fallback"] = "Farm Kenpachi", -- "Farm Kenpachi" or "Farm Gems"
    },

    ["Target Units"] = {
        ["Shadow"] = 2,
    },

    ["After Unit Farm"] = {
        ["Enabled"] = true,
        ["Unit"] = "Megumi",
        ["Goal"] = "gems", -- "Level" or "Gems"
        ["Target"] = 100000,
    },

    ["Raids"] = false,
    ["Raid Minimum Level"] = 70,

    ["Raid Equipment"] = {
        ["Enabled"] = true,
    },

    ["Villain Event"] = {
        ["Enabled"] = true,

        -- Farms Villain Invasion Act 1 until this balance.
        ["Target Coins"] = 5000,

        -- "Summon" uses the Villain Banner.
        -- "Shop" purchases the configured shop items.
        ["Spend Coins"] = "Summon",

        -- Used only when Spend Coins is "Summon".
        ["Summon Amount"] = 10,

        -- Stops summoning after owning every requested unit count.
        -- Leave empty for coin-based summoning without a unit target.
        ["Target Units"] = {
            -- ["VILLAIN_UNIT_NAME"] = 1,
            -- ["SECOND_VILLAIN_UNIT"] = 2,
        },

        -- Used only when Spend Coins is "Shop".
        ["Shop"] = {
            ["Items"] = {
                ["Cursed Book"] = 0,
                ["Trait Crystal"] = 0,
            },
        },
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
        ["ID"] = {},
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
