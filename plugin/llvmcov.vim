" ============================================================================
" File:        llvmcov.vim
" Description: Show coverage
" Maintainer:  Alessandro Pezzato <http://pezzato.net/>
" License:     The MIT License (MIT)
" Version:     0.1.0
" ============================================================================

command! -complete=shellcmd -nargs=0 CoverageCurrentFile call g:llvmcov#CoverageCurrentFile()
command! -complete=shellcmd -nargs=0 CoverageRefresh call g:llvmcov#RefreshData()
