set runtimepath+=~/.vim_runtime
set number
au GUIEnter * simalt ~x
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
set guifont=courier_new:h11
set belloff=all
set noerrorbells

function! StartUp()
    if 0 == argc()
        NERDTree /Desktop/Files/
    end
endfunction

autocmd VimEnter * call StartUp()
autocmd VimEnter * cd C:/Users/Ryan/Desktop/Files/
