syntax on
set encoding=utf-8
set termguicolors
set hidden
let g:rehash256 = 1
set foldmethod=indent
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoread
set updatetime=250
set noswapfile
set nobackup
set undofile
set undodir=~/.config/nvim/backups
set number
set relativenumber
set nowrap
set cursorline
set colorcolumn=80
set listchars=tab:▸\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set exrc
set secure

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set backupcopy=yes
set nowritebackup
set smartindent
set scrolloff=10
set updatetime=100
set completeopt=menu
set incsearch

let g:python3_host_prog='C:/Python39/python.exe'

" plug
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Raimondi/delimitMate'
Plug 'gregsexton/matchtag'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-signify'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'ycm-core/YouCompleteMe'
Plug 'joshdick/onedark.vim'
Plug 'cespare/vim-toml'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'editorconfig/editorconfig-vim'
Plug 'mbbill/undotree'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'https://github.com/dmarov/minimalist'
Plug 'joshdick/onedark.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
" /plug

colorscheme onedark

" airline
set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='raven'
" /airline
"
" emmet
let g:user_emmet_install_global = 0
autocmd FileType cshtml,html,css,scss EmmetInstall
" /emmet
"
" nerdtree
let NERDTreeWinSize = 30
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let NERDTreeMapUpdir = 'h'
let NERDTreeMapChangeRoot = 'l'
" /nerdtree

" nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_synchronize_view = 0
" /nerdtree-tabs
"
" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" /nerdtree-git-plugin

" vim-move
let g:move_key_modifier = 'C'
" /vim-move

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'neovim',
  \}
" /vim-test

" ctrlsf
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_selected_line_hl = 'op'
let g:ctrlsf_winsize = '100%'
" ctrlsf

" /custom mappings
nmap <Tab> <C-w>w
nmap <Space> :NERDTreeTabsToggle<CR>
"" /custom mappings

let g:coc_global_extensions = [
      \'coc-angular',
      \'coc-cmake',
      \'coc-vetur',
      \'coc-css',
      \'coc-git',
      \'coc-html',
      \'coc-phpls', 
      \'coc-json', 
      \'coc-tsserver'
      \]

function! s:GoToDefinition()
  if CocAction('jumpDefinition')
    return v:true
  endif

endfunction

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <leader>mv <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>qf <Plug>(coc-fix-current)
