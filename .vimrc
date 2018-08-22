set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

"------------------ VDebug Conf ------------------"
let baseDir = '/home/neemiasjnr/projetos/'
let project = 'tradetools'


"------------------ Configs ------------------"
let mapleader=','
set t_Co=256
set rtp+=/usr/local/lib/python3.6/dist-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
syntax on
filetype plugin indent on
set expandtab
set showcmd
set ignorecase
set smartcase
set cursorline
set hidden
set autowriteall
set nowrap
set sidescroll=1
" set complete=.,w,b,u 
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/
set fileformats=unix,dos,mac

" Enable mouse
set mouse=a

" Improve auto close characters
nmap <Space> <nop>
inoremap {      {}<Left>
inoremap {{     {{<Space><Space>}}<Left><Left><Left>
inoremap {%     {%<Space><Space>%}<Left><Left><Left>
inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
inoremap {}     {} 
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O<Tab>
" inoremap ((     (
inoremap ()     () 


"------------------ Visual ------------------"
colorscheme minimalist
set tabstop=4
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
hi LineNr ctermfg=black


"------------------ Mappings ------------------"
"Vim files shortcuts
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :tabedit ~/.vim/snippets<cr>
nnoremap ; :

" Clean hightlight after search
nmap <silent> ,/ :nohlsearch<CR>

" Save !! when you forgot to sudo
cmap w!! w !sudo tee % >/dev/null

set pastetoggle=<Insert>
nmap <Leader>q :bd<cr>
nmap <Leader>a ggVG
nmap <Leader>ft :tag<space>
nmap <Leader>fa :Ag<space>
nmap <Leader>v <C-w>|
nmap <Leader>h <C-w>_
nmap <Leader>il :Autoformat<CR>
nmap <A-Up> ddkP
vmap <A-Up> dkP
nmap <A-Down> ddp
vmap <A-Down> dp

" Buffers shortcut
nmap <Leader>bp :bp<cr>
nmap <Leader>bn :bn<cr>

" Tabs shortcut
nmap <Leader>t :tabnew<CR>
nmap <Leader>tn :tn<cr>
nmap <Leader>tp :tp<cr>
noremap 11 1gt
noremap 22 2gt
noremap 33 3gt
noremap 44 4gt
noremap 55 5gt
noremap 66 6gt
noremap 77 7gt
noremap 88 8gt
noremap 99 9gt

" Improve select all, copy and paste
imap <C-v> <esc><Insert>"+gpa<Insert>
vmap <C-v> s<esc><Insert>"+gp<Insert>
vmap <C-c> "+y
vmap <C-x> "+ygvd

" Improve indentation
vmap <Tab> <Home>>gv  
vmap <S-Tab> <Home><gv  
imap <S-Tab> <Esc><<i

" Improve moving blocks
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Improve horizontal navigation
map <C-ScrollWheelUp> 15zh
map <C-ScrollWheelDown> 15zl
map <C-H> 20h " Scroll 20 characters to the left
map <C-L> 20l " Scroll 20 characters to the right


" php sort namespaces
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d \" \" -f2-" }'<cr> 


"------------------ Split Management ------------------"
set splitbelow
set splitright
nmap <S-j> <C-W><C-J>
nmap <S-k> <C-W><C-K>
nmap <S-l> <C-W><C-L>
nmap <S-h> <C-W><C-H>
nmap <Leader>== <C-w>=
nmap <Leader>=<Bar> <C-w><Bar>
nmap <Leader>=- <C-w>_
nmap <Leader><Tab> <C-w>w
nmap <Leader><Bar> <C-w>v<C-W><Right>
nmap <Leader>- <C-w>s<C-w><Down>
nmap <Leader>ç :close<cr>



"------------------ Disable Arrow Keys ------------------"
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>


"------------------ Plugins ------------------"
"/
" NERDTree 
"/
" map <C-n> :NERDTreeToggle<CR>
" let NERDTreeQuitOnOpen = 1
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 0

"/
" Vim Airline 
"/
let g:powerline_pycmd='py3'
let g:airline_theme='minimalist'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

"/
" Emmet
"/
let g:user_emmet_leader_key='<Leader>'

"/
"/
" CtrlP
nmap <Leader>r :CtrlPBufTag<cr>
nmap <Leader>e :CtrlPMRUFiles<cr>
let g:ctrlp_custom_ignore = 'node_modules\|git\|vendor\|bd\|wp\|plugins'
let g:ctrlp_max_files=20000


"/
" Ag
"/
let g:ag_prg='ag -S --nocolor --nogroup --column --ignore vendor --ignore bd --ignore node_modules --ignore composer.lock --ignore tags --ignore "./public/js/*" --ignore "./resources/assets/js/*" --ignore artisan'
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
vmap * <Plug>AgActionVisual
let g:vim_action_ag_escape_chars = '#%.^$*+?()[{\\|'


"/
" Greplace.vim
"/
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"/
" Commentary
"/
map <Leader>k :Commentary<CR>
autocmd FileType html.twig setlocal commentstring={#\ %s\ #}

"/
" php-namespace
"/
function! IPhpInsertUse()
  call PhpInsertUse()
  call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"/
" pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

"/
" Ultisnips
"/
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

"/
" VDebug
"/
let g:vdebug_options = {}
let g:vdebug_options['break_on_open'] = 1
let g:vdebug_options['max_children'] = 128
let g:vdebug_options['path_maps'] = {'/var/www/html': baseDir . project}
let g:vdebug_options['port'] = 9000
let g:vdebug_options['watch_window_style'] = 'compact'
let g:vdebug_options['debug_file'] = '~/vdebug.log'
let g:vdebug_options['debug_file_level'] = 2


"------------------ Laravel ------------------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader>lfc :e app/Http/Controllers<cr>
nmap <Leader>lfm :e app/<cr>
nmap <Leader>lfv :e resources/views/<cr>


"------------------ Auto-Commands ------------------"
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END


" Notes and Tips
" - - - -
" za to expand/collapse code
" Ctrl+] or g+] to go to selected tag
" - - - -
" Surround Plugin
" cs (change surround) -> what you are looking for -> what you are changing to
" (example: cs'") change surround ' to "
" ds to delete surround
" cst to change html tag
" dst to delete html tag
" C+w+o maximize current buffer
" * in word search word in project
" - - - -
"   vdebug keybindings
"    let g:vdebug_keymap = {
" \    "run" : "<F5>",
" \    "run_to_cursor" : "<F9>",
" \    "step_over" : "<F2>",
" \    "step_into" : "<F3>",
" \    "step_out" : "<F4>",
" \    "close" : "<F6>",
" \    "detach" : "<F7>",
" \    "set_breakpoint" : "<F10>",
" \    "get_context" : "<F11>",
" \    "eval_under_cursor" : "<F12>",
" \    "eval_visual" : "<Leader>e",
" \}

