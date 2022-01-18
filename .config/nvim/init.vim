" I use LunarVim locally than Vanilla NeoVim
" this config mostly could be used in vscode-neovim

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

call plug#end()

autocmd BufWinEnter * :silent !/usr/local/bin/im-select com.apple.keylayout.US
autocmd InsertLeave * :silent !/usr/local/bin/im-select com.apple.keylayout.US

" line number
set number
set relativenumber

" clipboard
set clipboard^=unnamed,unnamedplus
