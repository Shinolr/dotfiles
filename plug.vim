call plug#begin()

Plug 'https://github.com/vim-ruby/vim-ruby'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'

if has('nvim')
    Plug 'neovim/nvim-lspconfig'
endif

call plug#end()
