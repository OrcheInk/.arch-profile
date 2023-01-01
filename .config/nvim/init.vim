"<<-option->>

set mouse=

"<<-global->>

" @fzf
let g:fzf_preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']

" @airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"<<-keymap->>

inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd -H -c=never -E=$FD_IGNORE')
map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :Files<CR>

"<<-command->>

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--color=fg:blue','--layout=reverse', '--info=inline']}, <bang>0)

"<<-function->>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --hidden -g=$RG_IGNORE --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

"<<-plugin->>

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
call plug#end()
