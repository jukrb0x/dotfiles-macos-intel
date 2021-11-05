call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
autocmd InsertEnter * :silent !/usr/local/bin/im-select com.apple.keylayout.US
call plug#end()
