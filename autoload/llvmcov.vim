" ============================================================================
" Maintainer:  Alessandro Pezzato <http://pezzato.net/>
" License:     The MIT License (MIT)
" ============================================================================

if !exists('g:llvmcov#bin')
  let g:llvmcov#bin = "build/test/lib/unit_tests"
endif

if !exists('g:llvmcov#tmp')
  let g:llvmcov#tmp = ".tmp/coverage"
endif

if !exists('g:llvmcov#profile')
  let g:llvmcov#profile = g:llvmcov#tmp . "/default.profdata"
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
	let l:bin = fnamemodify(g:llvmcov#bin, ':p')
  execute "! mkdir -p " . g:llvmcov#tmp . " && cd " . g:llvmcov#tmp . " && LLVM_PROFILE_FILE=default.profraw " . l:bin . " && llvm-profdata merge -o default.profdata default.profraw"
endf

fu! g:llvmcov#CoverageCurrentFile()
  let l:command = s:GetLlvmCovCommand(g:llvmcov#profile, g:llvmcov#bin, @%)
  call s:RunShellCommand(l:command)
endf
