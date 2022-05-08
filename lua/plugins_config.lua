require('nvim-tree').setup()
require('telescope').setup()

-- Required by merlin
vim.api.nvim_exec(
[[
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "helptags " . g:opamshare . "/merlin/vim/doc"
]], true)
