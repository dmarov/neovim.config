-- This is my neovim config using lua scripting

-- set encoding of terminal to utf-8
vim.opt.encoding = 'utf-8'

-- set output encoding to utf-8
vim.opt.fileencoding = 'utf-8'

--  enable 24-bit colors
vim.opt.termguicolors = true

-- do not unload buffer when it is abandoned
vim.opt.hidden = true

-- create folds by indent
vim.opt.foldmethod = 'indent'

-- has something to do with key mapping
vim.opt.keymap = 'russian-jcukenwin'

-- disables side effect of keymap set
vim.opt.iminsert = 0

-- disables side effect of keymap set
vim.opt.imsearch = 0

-- auto reload file changed outside of vim
vim.opt.autoread = true

-- write swap file every 250 milliseconds
vim.opt.updatetime = 250

-- do not write swap file
vim.opt.swapfile = false

-- do not create backup files
vim.opt.backup = false

-- write undo history on file write
vim.opt.undofile = true

-- set director to store undo files
vim.opt.undodir = vim.fn.expand('~/.config/nvim/backups')

-- show line numbers
vim.opt.number = true

-- use relative numbering
vim.opt.relativenumber = true

-- do not wrap lines which don't fit
vim.opt.wrap = false

-- highlight text line of the cursor
vim.opt.cursorline = true

-- display line at 80 column
vim.opt.colorcolumn = '80'

-- highlight characters
vim.opt.listchars = {tab = '▸ ',eol = '¬', trail = '·'}

-- has something to do with split character
vim.opt.fillchars:append('vert: ')

-- has something to do with lists
vim.opt.list = true

-- enables normal mode using different language
vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'

-- execute commands from config files
vim.opt.exrc = true

-- forbid some commands for execution from config
vim.opt.secure = true

-- consider tab being 4 spaces
vim.opt.tabstop = 4

-- number of spaces for autoindent
vim.opt.shiftwidth = 4

-- consider blanks insert to comply with the rest of the file
vim.opt.smarttab = true

-- use spaces instead of tabs
vim.opt.expandtab = true

-- backup copy file and overwrite original
vim.opt.backupcopy = 'yes'

-- do not write backup file
vim.opt.writebackup = false

-- do smart indenting on new line
vim.opt.smartindent = true

-- keep at leas 10 lines up and down visible
vim.opt.scrolloff = 10

-- create swap file every 100 milliseconds
vim.opt.updatetime = 100

-- show menu on autocomplete
vim.opt.completeopt = 'menu'

-- show search result on the go
vim.opt.incsearch = true

-- set color scheme
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
-- helper for html
Plug('mattn/emmet-vim')
-- custom status line
Plug('vim-airline/vim-airline')
-- themes for custom status line
Plug('vim-airline/vim-airline-themes')
-- git
Plug('tpope/vim-fugitive')
-- completion on Tab
Plug('ervandew/supertab')
-- directory browser
Plug('scrooloose/nerdtree')
-- simple code comments
Plug('tpope/vim-commentary')
-- advanced code comments
Plug('preservim/nerdcommenter')
-- git for directory browser
Plug('Xuyuanp/nerdtree-git-plugin')
-- fake tabs for nerdtree
Plug('jistr/vim-nerdtree-tabs')
-- multicursor
Plug('mg979/vim-visual-multi')
-- move selection with Alt
Plug('matze/vim-move')
-- change brackets with cs"'
Plug('tpope/vim-surround')
-- bookmarks with mm mi m...
Plug('MattesGroeger/vim-bookmarks')
-- auto qoutes, parenthesis, brackets close
Plug('Raimondi/delimitMate')
-- hightlights html matching tag
Plug('gregsexton/matchtag')
-- full text search
Plug('dyng/ctrlsf.vim')
-- marks line VCS status
Plug('mhinz/vim-signify')
-- indentation
Plug('godlygeek/tabular')
-- unit test runner
Plug('vim-test/vim-test')
-- color theme
Plug('joshdick/onedark.vim')
-- syntax highlight and indentation
Plug('sheerun/vim-polyglot')
-- snippets support
Plug('SirVer/ultisnips')
-- snippets collection
Plug('honza/vim-snippets')
-- editorconfig
Plug('editorconfig/editorconfig-vim')
-- undo tree visualizer
Plug('mbbill/undotree')
-- Langserver easy installer
Plug('neoclide/coc.nvim', { branch = 'release' })
-- configs for nvim lsp client
Plug('neovim/nvim-lspconfig')
-- formatter
Plug 'prettier/vim-prettier'
-- fuzzy autocompletion
Plug 'ycm-core/YouCompleteMe'
vim.call('plug#end')

-- set theme
vim.cmd [[
  syntax enable
  colorscheme onedark
]]

-- always show status line
vim.cmd [[
  let laststatus = 2
]]

-- something related to terminal colors
vim.g['rehash256'] = 1

-- NERDTree
vim.g['NERDTreeWinSize'] = 30;
vim.g['NERDTreeDirArrows'] = 1;
vim.g['NERDTreeDirArrowExpandable'] = '▸'
vim.g['NERDTreeDirArrowCollapsible'] = '▾'
vim.g['NERDTreeShowHidden']=1
vim.g['NERDTreeMapUpdir'] = 'h'
vim.g['NERDTreeMapChangeRoot'] = 'l'
vim.g['NERDTreeMinimalMenu'] = 1

-- NERDTree tabs
vim.g['nerdtree_tabs_open_on_console_startup'] = 1
vim.g['nerdtree_tabs_open_on_gui_startup'] = 1
vim.g['nerdtree_tabs_focus_on_files'] = 1
vim.g['nerdtree_tabs_synchronize_view'] = 0

-- NERDTree git
vim.g['NERDTreeGitStatusIndicatorMapCustom'] = {
  Modified = "✹",
  Staged = "✚",
  Untracked = "✭",
  Renamed = "➜",
  Unmerged = "═",
  Deleted = "✖",
  Dirty = "✗",
  Clean = "✔︎",
  Unknown = "?"
}

-- airline
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline_theme'] = 'raven'
vim.g['airline_powerline_fonts'] = 1

vim.cmd [[
  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
]]

vim.g['airline_left_sep'] = '»'
vim.g['airline_left_sep'] = '▶'
vim.g['airline_right_sep'] = '«'
vim.g['airline_right_sep'] = '◀'
vim.g['airline_symbols.linenr'] = '␊'
vim.g['airline_symbols.linenr'] = '␤'
vim.g['airline_symbols.linenr'] = '¶'
vim.g['airline_symbols.branch'] = '⎇'
vim.g['airline_symbols.paste'] = 'ρ'
vim.g['airline_symbols.paste'] = 'Þ'
vim.g['airline_symbols.paste'] = '∥'
vim.g['airline_symbols.whitespace'] = 'Ξ'
vim.g['airline_left_sep'] = ''
vim.g['airline_left_alt_sep'] = ''
vim.g['airline_right_sep'] = ''
vim.g['airline_right_alt_sep'] = ''
vim.g['airline_symbols.branch'] = ''
vim.g['airline_symbols.readonly'] = ''
vim.g['airline_symbols.linenr'] = ''

-- emmet
-- prevent installation of global mappings
vim.g['user_emmet_install_global'] = 0

vim.cmd [[
  autocmd FileType cshtml,html,css,scss,sass EmmetInstall
]]

-- vim-move
vim.g['move_key_modifier'] = 'C'

-- vim-test
vim.keymap.set('n', '<leader>t', ':TestNearest<CR>]')
vim.keymap.set('n', '<leader>T', ':TestFile<CR>]')
vim.keymap.set('n', '<leader>a', ':TestSuite<CR>]')
vim.keymap.set('n', '<leader>l', ':TestLast<CR>]')
vim.keymap.set('n', '<leader>g', ':TestVisit<CR>]')

vim.g['test#strategy'] = {
  nearest = 'neovim',
  file = 'neovim',
}

-- CtrlSF
vim.g['ctrlsf_default_view_mode'] = 'compact'
vim.g['ctrlsf_position'] = 'bottom'
vim.g['ctrlsf_regex_pattern'] = 1
vim.g['ctrlsf_selected_line_hl'] = 'op'
vim.g['ctrlsf_winsize'] = '100%'

-- coc
vim.g['coc_global_extensions'] = {
  'coc-cmake',
  'coc-vetur',
  'coc-git',
  'coc-html',
  'coc-phpls',
  'coc-json',
  'coc-tsserver',
  'coc-eslint',
  'coc-tslint',
  'coc-lua',
  'coc-stylelintplus'
}

vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent = true })
vim.keymap.set('n', 'mv', '<Plug>(coc-rename)', { silent = true })
vim.keymap.set('x', '<leader>f', '<Plug>(coc-format-selected)')
vim.keymap.set('n', '<leader>f', '<Plug>(coc-format-selected)')
vim.keymap.set('x', '<leader>a', '<Plug>(coc-codeaction-selected)')
vim.keymap.set('n', '<leader>a', '<Plug>(coc-codeaction-selected)')
vim.keymap.set('n', '<leader>ac', '<Plug>(coc-codeaction)')
vim.keymap.set('n', '<leader>qf', '<Plug>(coc-fix-current)')
vim.keymap.set('i', '<cr>', 'pumvisible() ? coc#pum#confirm() : "<CR>"', { expr = true, noremap = true })

vim.cmd [[
  function! s:GoToDefinition()
    if CocAction('jumpDefinition')
      return v:true
    endif
  endfunction
]]

-- reload current vim config
vim.keymap.set('n', '<leader>sv', ':source $MYVIMRC<CR>', { silent = true })

-- toggle NERDTree on space
vim.keymap.set('n', '<Space>', ':NERDTreeTabsToggle<CR>', { silent = true })

-- go to next view on Tab
vim.keymap.set('n', '<Tab>', '<C-w>w', { silent = true })
