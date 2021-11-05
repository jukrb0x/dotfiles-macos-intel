call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
autocmd BufWinEnter * :silent !/usr/local/bin/im-select com.apple.keylayout.US
autocmd InsertLeave * :silent !/usr/local/bin/im-select com.apple.keylayout.US
call plug#end()
