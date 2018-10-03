syntax enable
colorscheme onedark
filetype indent on

set number
set cursorline
set showmatch
set expandtab
set tabstop=4
set softtabstop=4


function! FileSize() abort
    let l:bytes = getfsize(expand('%p'))
    if (l:bytes >= 1024)
        let l:kbytes = l:bytes / 1025
    endif
    if (exists('kbytes') && l:kbytes >= 1000)
        let l:mbytes = l:kbytes / 1000
    endif
 
    if l:bytes <= 0
        return '0'
    endif
  
    if (exists('mbytes'))
        return l:mbytes . 'MB'
    elseif (exists('kbytes'))
        return l:kbytes . 'KB'
    else
        return l:bytes . ' Bytes'
    endif
endfunction

set laststatus=2
set statusline+=%#PmenuSel#
set statusline+=\ %F
set statusline+=%m
set statusline+=\ \(%\{FileSize()}\)
set statusline+=%=
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=\ %l
set statusline+=\/%L
set statusline+=:
set statusline+=%c
set statusline+=\ 
