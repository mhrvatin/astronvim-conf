return {
  {
    "zbirenbaum/copilot.lua",
    name = "copilot",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        panel = {
          enabled = false,
          auto_refresh = true,
          keymap = {
            jump_prev = "<S-h>",
            jump_next = "<S-l>",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.3,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-l>",
            accept_word = false,
            accept_line = false,
            next = "<C-k>",
            prev = "<C-j>",
            dismiss = "<C-h>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = vim.fn.expand "$HOME" .. "/.nvm/versions/node/v22.15.0/bin/node", -- Node.js version must be > 16.x
        server_opts_overrides = {},
      }
    end,
  },
}
