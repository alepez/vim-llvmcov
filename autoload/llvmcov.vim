" ============================================================================
" Maintainer:  Alessandro Pezzato <http://pezzato.net/>
" License:     The MIT License (MIT)
" ============================================================================

if !exists('g:llvmcov#profile')
  let g:llvmcov#profile = "tmp/coverage/default.profdata"
endif

if !exists('g:llvmcov#bin')
  let g:llvmcov#bin = "./build/test/lib/unit_tests"
endif

fu! s:RunShellCommand(cmdline)
  botright vnew
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  execute 'silent read !'. a:cmdline
  setlocal nomodifiable
endf

fu! s:GetLlvmCovCommand(profile, bin, source)
  return "llvm-cov show " . " -instr-profile=" . a:profile . " " . a:bin . " " . a:source " --use-color=0"
endf

fu! g:llvmcov#RefreshData()
  " FIXME
endf

fu! g:llvmcov#CoverageCurrentFile()
  let l:command = s:GetLlvmCovCommand(g:llvmcov#profile, g:llvmcov#bin, @%)
  call s:RunShellCommand(l:command)
endf

command! -complete=shellcmd -nargs=0 CoverageCurrentFile call s:CoverageCurrentFile()

