return {
    "hrsh7th/nvim-cmp",
    keys = {":", "/", "?"}, -- lazy load cmp on more keys along with insert mode
    dependencies = {
        "hrsh7th/cmp-cmdline" -- add cmp-cmdline as dependency of cmp
        -- "f3fora/cmp-spell"
    },
    config = function(plugin, opts)
        local cmp = require "cmp"
        -- run cmp setup
        cmp.setup(opts)

        -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {{name = "buffer"}}
        })
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({{name = "path"}}, {
                {name = "cmdline", option = {ignore_cmds = {"Man", "!"}}}
            })
        })
    end
}
