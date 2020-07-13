set number
set hlsearch
syntax on
let mapleader="\<Space>"
noremap <leader>w :w<cr>
inoremap jj <Esc>
set noswapfile
call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/vim-cursorword'
Plug 'jiangmiao/auto-pairs'
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
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'xcodebuild/fcitx-remote-for-osx'
Plug 'airblade/vim-gitgutter'
Plug 'jpalardy/vim-slime'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'mbbill/undotree'
call plug#end()
colorscheme gruvbox
nnoremap jk :wq<CR>
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
inoremap oo <Esc>o
set tabstop=4
set shiftwidth=4
set softtabstop=4
set relativenumber
let g:input_toggle = 0

set timeoutlen=150
nnoremap <leader>t:TagbarToggle<CR>
nnoremap <C-w> <C-w>w
let g:python3_host_prog="/Users/king/anaconda3/bin/python3"
"Python 格式化代码
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
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
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
"let g:mkdp_auto_start = 1
"设置markdown不折叠文字
let g:vim_markdown_folding_disabled = 1
"markdown自动生成目录
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_math = 1
let g:vim_markdown_autowrite = 1
let g:mkdp_auto_close = 0
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
let g:semshi#simplify_markup='v:false'
let g:semshi#always_update_all_highlights='v:false'
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
let g:semshi#no_default_builtin_highlight=v:false
let g:semshi#update_delay_factor=0.0001
let g:ove_key_modmifier = 'C'
map <c-m> <leader>cc
map <c-n> <leader>cu
nnoremap <leader>q :q!<CR>
"leaderF 配置
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>f"
noremap ,b :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap ,f :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap ,t :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap ,l :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>
autocmd VimEnter,FocusLost * set imdisable
autocmd FocusGained,InsertEnter * set noimdisable
set updatetime=100
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_python_ipython=1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" 设置ale的代码检测符号
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"设置vim代码折叠为缩进
set foldmethod=indent
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set foldlevel=99
set foldenable
set formatoptions-=tc
noremap <leader>u :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc
let g:move_key_modifier = 'C'
