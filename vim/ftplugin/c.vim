set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set cinoptions=(0
autocmd FileType make,automake set noexpandtab shiftwidth=8 softtabstop=8
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/
