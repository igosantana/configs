require("igosantana.remap")
require("igosantana.set")
require("igosantana.packer")
require("igosantana.lsp")
vim.cmd([[
  augroup packer_user_config

    autocmd!

    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
