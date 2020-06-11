set number
set hlsearch
syntax on
let mapleader="\<Space>"
noremap <leader>w :w<cr>
inoremap jj <Esc>
map vv vaw
set noswapfile
call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/vim-cursorword'
Plug 'majutsushi/tagbar'
Plug 'chiel92/vim-autoformat'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'plasticboy/vim-markdown'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'matze/vim-move'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()
colorscheme gruvbox
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>h <Plug>(easymotion-linebackward)
map <leader>l <Plug>(easymotion-lineforward)
noremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let g:ctrlp_map = '<c-p>'
" TextEdit might fail if hidden is not set.
noremap J 5j
noremap K 5k
set tabstop=4
set shiftwidth=4
set softtabstop=4
set relativenumber
let g:input_toggle = 0
function! Fcitx2en()
	let s:input_status = system("fcitx-remote")
	if s:input_status == 2
		let g:input_toggle = 1
		let l:a = system("fcitx-remote -c")
	endif
endfunction

function! Fcitx2zh()
	let s:input_status = system("fcitx-remote")
	if s:input_status != 2 && g:input_toggle == 1
		let l:a = system("fcitx-remote -o")
		let g:input_toggle = 0
	endif
endfunction

set timeoutlen=150
autocmd InsertLeave * call Fcitx2en()
autocmd InsertEnter * call Fcitx2zh()
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <C-w> <C-w>w
let g:python3_host_prog="/Users/king/anaconda3/bin/python3"
"Python 格式化代码
nnoremap <leader>f :Autoformat<CR>
inoremap oo <Esc>o
nnoremap <leader>n :nohl <CR>
inoremap pp <Right>:<CR>
nnoremap <leader>p $
inoremap slef self
inoremap ,, <Right>
inoremap <C-z> <C-n>
map <F5> :call CompileRunGcc()<CR>
"一键运行代码
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python %"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &filetype == 'go'
		"        exec "!go build %<"
		exec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox %.html &"
	endif
endfunc
let g:AutoPairsShortcutFastWrap = '<M-e>'
"NERDTree配置
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let g:vim_markdown_math = 1
let g:mkdp_browser = '/Applications/Google Chrome.app'
"设置markdown-preview为自动打开
let g:mkdp_auto_start = 1
"设置markdown不折叠文字
let g:vim_markdown_folding_disabled = 1
"markdown自动生成目录
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_math = 1
let g:vim_markdown_autowrite = 1
autocmd Filetype markdown inoremap <buffer> ，1 **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ，2 <Esc>/<++><CR>:nohlsearch<CR>
let g:SuperTabDefaultCompletionType = '<C-n>'
inoremap - =
inoremap = -
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mycoolsnippets"]
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="-------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_licenseTag="Open Source"
let g:DoxygenToolkit_authorName="Wangy Yuxuan email: 1428409697@qq.com"
set cursorline
