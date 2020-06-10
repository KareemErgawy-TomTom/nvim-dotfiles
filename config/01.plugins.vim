" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	" Let dein manage dein
	" Required:
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('scrooloose/nerdtree')
	call dein#add('icymind/NeoSolarized')
	call dein#add('junegunn/fzf')
    call dein#add('KareemErgawy/fzf.vim')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('tpope/vim-fugitive')
    call dein#add('rhysd/vim-clang-format')
    call dein#add('airblade/vim-rooter')
    call dein#add('ycm-core/YouCompleteMe', {'merged': 0})

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
