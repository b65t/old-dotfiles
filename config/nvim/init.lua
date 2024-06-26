-- number settings
local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- transpary settings
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight NonText guibg=NONE ctermbg=NONE')
vim.cmd('highlight SignColumn guibg=NONE ctermbg=NONE')
vim.cmd('highlight NormalFloat guibg=NONE ctermbg=NONE')
vim.cmd('highlight NormalNC guibg=NONE ctermbg=NONE')

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "rafamadriz/friendly-snippets",
    "lewis6991/gitsigns.nvim",
    "nvim-lua/plenary.nvim",

    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function()
            local alpha = require('alpha')
            local dashboard = require('alpha.themes.dashboard')
            dashboard.section.header.val = {
	     "                                                                           ",
	     "       ███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄     ",
             "       ███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄   ",
             "       ███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███   ",
             "       ███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███   ",
             "       ███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███   ",
             "       ███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███   ",
             "       ███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███   ", 
             "        ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀    ",
             "                                                                           ",

            }
            alpha.setup(dashboard.config)
        end,
    },

    { 
     "nvim-lualine/lualine.nvim",
     dependencies = { 'nvim-tree/nvim-web-devicons' },

    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    }
})

require('lualine').setup {
  options = {
    theme = "nord",
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
   -- lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', --[[ add your center components here in place of this comment ]]
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
   --   { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}

   colors = {
      blue = "#8aadf4",
      green = "#a6da95",
      violet = "#b7bdf8",
      yellow = "#eed49f",
      red = "#ed8796",
      fg = "#cad3f5",
      bg = "#1e2030",
      inactive_bg = "#363a4f",
    }


