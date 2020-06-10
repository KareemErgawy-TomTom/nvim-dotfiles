" Use ; for commands
nnoremap ; :

" split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Delete trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" nerdtree
" autocmd vimenter * NERDTree " start nerdtree automatically when vim starts up
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMapQuit='\q'

" keybindings for YCM
nnoremap <silent> gd :YcmCompleter GoTo<CR>
nnoremap <silent> gf :YcmCompleter GoToReferences<CR>
nnoremap <silent> gr :YcmCompleter RefactorRename
nnoremap <silent> gt :YcmCompleter GetType<CR>
nnoremap <silent> gx :YcmCompleter FixIt<CR>
nnoremap <silent> ge :YcmDiags<CR>

" ALE
nmap <F8> <Plug>(ale_fix)

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-[> :GFiles<CR>
"
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

" change working directory to where the file in the buffer is located
" if user types `,cd`
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>

" Easy most-recent-buffer switching
nnoremap <Tab> :Buffers<CR>

let mapleader=","

tnoremap <Esc> <C-\><C-n>

"inoremap jk <esc>
"tnoremap jk <C-\><C-n>

"inoremap <esc> <nop>

nnoremap ` :noh<cr>
