return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = "User AstroFile"
        -- opts = {
        -- char = "│",
        -- filetype_exclude = {
        --     "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy"
        -- },
        -- show_trailing_blankline_indent = false,
        -- show_current_context = false
        -- }
    }, {import = "astrocommunity.indent.mini-indentscope"}, {
        "echasnovski/mini.indentscope",
        opts = {
            symbol = "╎",
            options = {try_as_border = false, indent_at_cursor = true}
        }
    }
}
