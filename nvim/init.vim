"Sample ****
"nnoremap <Leader>a :echo "Hello"<CR>

" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

" ENV
let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

" Load rc file
function! s:load(file) abort
    let s:path = expand('$CONFIG/nvim/rc/' . a:file . '.vim')

    if filereadable(s:path)
        execute 'source' fnameescape(s:path)
    endif
endfunction

call s:load('plugins')
call s:load('which-key')
call s:load('floaterm')


let mapleader = "\<Space>"
source $HOME/.config/nvim/test.vim

let g:gh_token = '333cfd5c5db20bbcb50cd10975a3f0dc10ba180b'


