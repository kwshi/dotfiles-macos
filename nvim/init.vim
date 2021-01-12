" helo

call plug#begin()
  Plug 'gruvbox-community/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  Plug 'ahw/vim-pbcopy'
  Plug 'prettier/vim-prettier'
call plug#end()

colorscheme gruvbox
set sw=2 ts=2
set et nu acd tgc
set wim=list:longest
set scl=number

au FileType * set fo-=c fo-=o

lua vim.lsp.set_log_level("trace")

"autocmd BufWritePre *.{ts,tsx} lua vim.lsp.buf.formatting_sync(nil, 1000)
"au BufWritePre *.{ts,tsx,js,jsx} Neoformat prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>

lua require 'lspconfig'.gopls.setup{}
lua require 'lspconfig'.pyls.setup{}
lua require 'lspconfig'.tsserver.setup{}
lua require 'lspconfig'.ocamllsp.setup{}
lua require 'lspconfig'.cssls.setup{}
lua require 'lspconfig'.html.setup{}
lua require 'lspconfig'.vimls.setup{}
