" Auto formats on save
let g:neoformat_enabled_python = ['autopep8', 'black', 'isort']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

