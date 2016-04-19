set nu
set ic
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set noswapfile
set mouse=a
hi Search cterm=NONE ctermfg=0 ctermbg=2
hi Comment ctermfg=darkcyan

hi StatusLine ctermbg=black ctermfg=DarkGreen guisp=Magenta guibg=Red

"cursor line + cursor color
set cursorline
highlight LineNr ctermfg=grey
highlight CursorLine          guibg=#003853 ctermbg=8  gui=none cterm=none
highlight CursorLineNR        guibg=#003853 ctermbg=3  ctermfg=0 gui=none cterm=none

"set t_Co=256          " 256 color mode
hi MatchParen cterm=none ctermbg=8 ctermfg=6

execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDTree
"map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * if (winnr("$") == 1 && bufname(winbufnr(0)) == "[[buffergator-buffers]]") | q | endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
"nnoremap <silent> <c-e> :BufExplorerHorizontalSplit<CR>
"nnoremap <silent> <c-e> :BufExplorer<CR>
"nnoremap <silent> <c-m> :CtrlPMixed<CR>
nnoremap <silent> <c-n> :BuffergatorOpen<CR>
nnoremap <silent> <c-l> :b#<CR>


let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_open_multiple_files = 'i'
"let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_cmd = 'CtrlPMRU'

let g:airline_theme='bubblegum'

augroup reload_vimrc " {
        autocmd!
            autocmd BufWritePost $MYVIMRC source $MYVIMRC
        augroup END " }

nnoremap <expr> zz 'zt' . winheight(0)/6 . '<c-y>'


"ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/python/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

"buffergator
let g:buffergator_autodismiss_on_select = 1
let g:buffergator_autoupdate = 1
let g:buffergator_sort_regime = 'bufnum'

"diminactive
let g:diminactive_use_syntax = 1
hi ColorColumn ctermbg=8 guibg=#eee8d5
autocmd VimEnter * DimInactive

"single char input
"http://vim.wikia.com/wiki/Insert_a_single_character
function! RepeatChar(char, count)
      return repeat(a:char, a:count)
endfunction
nnoremap s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>

"if has("autocmd")
"    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

"make vim save and load the folding of the document each time it loads"
""also places the cursor in the last place that it was left."
"au BufWinLeave *.* mkview
"au BufWinEnter *.* silent loadview

"gVim
"colorscheme desert
"set guifont=courier_new:h11

"autocmd VimEnter * BuffergatorOpen
"autocmd VimEnter * wincmd w



