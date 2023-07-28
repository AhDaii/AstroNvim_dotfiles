local prefix = "<leader>a"
local maps = {n = {}}
local icon = vim.g.icons_enabled and "⚡︎"
maps.n[prefix] = {desc = icon .. "Flash"}
require("astronvim.utils").set_mappings(maps)
return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        {
            prefix .. "j",
            mode = {"n", "x", "o"},
            function() require("flash").jump() end,
            desc = "Flash jump"
        }, {
            prefix .. "t",
            mode = {"n", "o", "x"},
            function() require("flash").treesitter() end,
            desc = "Flash Treesitter"
        }, {
            "r",
            mode = "o",
            function() require("flash").remote() end,
            desc = icon .. "Remote Flash(Flash)"
        }, {
            "s",
            mode = {"o", "x"},
            function() require("flash").treesitter_search() end,
            desc = icon .. "Treesitter Search(flash)"
        }, {
            "s",
            mode = {"c"},
            function() require("flash").toggle() end,
            desc = icon .. "Toggle Flash Search(Flash)"
        }
    }
}
