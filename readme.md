## 我的neovim配置文件 --- 猛男必备
!!! **需要修改的地方**

let g:python3_host_prog="自己的python3地址"

let g:mkdp_broswer="自己的chrome浏览器地址"
#### 1. 移动命令和插入命令
\<up> k \<down>j \<left>h \<right> l

在上面插入一行O 在下面插入一行o

在行首插入 I 在行尾插入 A

#### 2. 键的映射
将空格键\<Space>设为\<leader>`  
jk :wq  
jj \<Esc>  
\<leader>q :q
\<leader>qq :q!  
由于经常需要按=错误按成-，将-与=相互转换  
J 5j
K 5k 加快寻找速度  
\搜索时
连按两次oo是在insert模式下在下面插入一行  
连按两次pp是在定义函数时在右边加上:并换行，在写python函数时十分有用  
#### 3. 基本设置
语法高亮，不保存临时文件，显示行号和相对行号，设置主题为gruvbox，写代码比较舒服  
\<F5>直接运行Python, Java等程序，并提供markdown在网页中的预览
#### 4. 精选插件
**插件管理器**vim-plug
##### 4.1 补全类
coc-nvim 用过最好的补全插件，补全速度很快，并且可以安装coc自己的插件。需要补全Python，在命令行输入:CocInsatll coc-python，以此类推  
auto-pair 类似pycharm、vscode等的自动补全括号，引号功能  
vim-snippets 代码片段工具，输入class按\<Tab>键自动补全类的基本框架，\<ctrl>j(k)自动找到下（上）一个需要补全的地方  
##### 4.2 移动类
leaderF 模糊查找工具，暂且添加到移动类里面  
+ \<leader>f 在当前目录查找文件  
+ ,b 寻找buffer
+ ,t 寻找当前buffer的Tags
+ ,l 寻找当前buffer的行
+ \<Tab>可进入下拉框进行选择
+ <C-c> 退出leaderF

vim-easymotion 快速移动到目标单词 快捷键 s \<char1>\<char2> 输入目标单词的两个字母，easy-motion会显示编号，选择目标单词的编号 S \<char> 选择一个单词  
##### 4.3 改动类
vim-surround 成对替换 cs " '将包围单词的"替换成' ds 删除 ysiw " 对单词添加； yss 对段落添加
vim-move 实现类似vscode alt+<Up> alt+<Down>实现将段落上移下移的操作，配置将alt改成了ctrl  
vim本身实现的改动 diw 删除单词并进入修改模式 daw删除单词以及单词的空格 dd 剪切整段 y复制单词 yy整段 p粘贴 
##### 4.4 代码修饰
indentLine 用虚线显示代码缩进  
tagbar 展示代码的ctags 快捷键 
vim-autoformat 按照pep8规定格式化python代码，输入:Autoformat  
DoxygenToolkit.vim 给代码添加说明文档 :Dox命令  
##### 4.5 markdown
语法 vim-markdown  
预览 markdow-preview.nvim  \<F5>即可预览markdown  
##### 4.6 美化插件
vim-startify 给nvim添加首页标签  
vim-airline，vim-airline-themes 美化状态栏  
semshi 美化python代码， 可以在类和函数中追踪并高亮变量,以及批量重命名 :Semshi rename   
vim-devicons 给各种文件添加自己的标志  

