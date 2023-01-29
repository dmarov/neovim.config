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
vim.opt.undodir = vim.fn.expand('~/.local/share/nvim/backups')

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

require('packer').startup(function(use)
  -- packer itself
  use 'wbthomason/packer.nvim'
  -- helper for html
  use 'mattn/emmet-vim'
  -- custom status line
  use 'vim-airline/vim-airline'
  -- themes for custom status line
  use 'vim-airline/vim-airline-themes'
  -- git
  use 'tpope/vim-fugitive'
  -- completion on Tab
  use 'ervandew/supertab'
  -- directory browser
  use 'scrooloose/nerdtree'
  -- simple code comments
  use 'tpope/vim-commentary'
  -- advanced code comments
  use 'preservim/nerdcommenter'
  -- git for directory browser
  use 'Xuyuanp/nerdtree-git-plugin'
  -- fake tabs for nerdtree
  use 'jistr/vim-nerdtree-tabs'
  -- multicursor
  use 'mg979/vim-visual-multi'
  -- move selection with Alt
  use 'matze/vim-move'
  -- change brackets with cs"'
  use 'tpope/vim-surround'
  -- bookmarks with mm mi m...
  use 'MattesGroeger/vim-bookmarks'
  -- auto qoutes, parenthesis, brackets close
  use 'Raimondi/delimitMate'
  -- hightlights html matching tag
  use 'gregsexton/matchtag'
  -- full text search
  use 'dyng/ctrlsf.vim'
  -- marks line VCS status
  use 'mhinz/vim-signify'
  -- indentation
  use 'godlygeek/tabular'
  -- unit test runner
  use 'vim-test/vim-test'
  -- color theme
  use 'joshdick/onedark.vim'
  -- syntax highlight and indentation
  use 'sheerun/vim-polyglot'
  -- editorconfig
  use 'editorconfig/editorconfig-vim'
  -- undo tree visualizer
  use 'mbbill/undotree'
  -- configs for nvim lsp client
  use 'neovim/nvim-lspconfig'
  -- formatter
  use 'prettier/vim-prettier'
  -- completion
  use 'hrsh7th/nvim-cmp'
  -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' 
  -- buffer words
  use 'hrsh7th/cmp-buffer' 
  -- Snippets source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip'
  -- Snippets plugin
  use 'L3MON4D3/LuaSnip'
end)

vim.cmd [[
  set completeopt=menu,menuone,noselect
]]

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
  file = 'neovim'
}

-- CtrlSF
vim.g['ctrlsf_default_view_mode'] = 'compact'
vim.g['ctrlsf_position'] = 'bottom'
vim.g['ctrlsf_regex_pattern'] = 1
vim.g['ctrlsf_selected_line_hl'] = 'op'
vim.g['ctrlsf_winsize'] = '100%'

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

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
    ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
    -- C-b (back) C-f (forward) for snippet placeholder navigation.
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}


-- vim.diagnostic.config({
--   virtual_text = false
-- })

-- vim.o.updatetime = 500
-- vim.cmd [[
--   autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
-- ]]

-- vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
-- vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require('lspconfig')

local map = function(type, key, value)
	vim.api.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end

local custom_attach = function(client)
  map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
  map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
  map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
  map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
  map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
  map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
  map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
  map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
  map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
  map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
  map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
  map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
  map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
  map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
  map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
end

lspconfig.tsserver.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.eslint.setup{
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.html.setup{
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.stylelint_lsp.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
  filetypes = {
    'css',
    'less',
    'scss',
    'sass'
  },
}

lspconfig.luau_lsp.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.yamlls.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.cssls.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
  filetypes = {
    'css',
    'less',
    'scss',
    'sass'
  },
}

lspconfig.dockerls.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.emmet_ls.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
}

lspconfig.jsonls.setup {
  capabilities = capabilities,
  on_attach = custom_attach,
}
