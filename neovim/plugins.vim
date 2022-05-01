call plug#begin()

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    
    " Folder structure / tree
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

    " Commenting
    Plug 'preservim/nerdcommenter' 

    " Git integration
    Plug 'tpope/vim-fugitive'

    " Auto-close braces and scopes
    Plug 'jiangmiao/auto-pairs'

    " Status themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'luisiacc/gruvbox-baby'

    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Formatters
    Plug 'sbdchd/neoformat'
        
call plug#end()

