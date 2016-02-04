# vim-llvmcov

**Vim plugin to show code coverage with llvm cov tool**.

The llvm-cov tool shows code coverage information for programs that are
instrumented to emit profile data.

This plugin works with languages supported by llvm: C,C++,Objective-C.

[![asciicast](https://asciinema.org/a/35464.png)](https://asciinema.org/a/35464?autoplay=1)

## Usage

### Refresh coverage info

This command run tests, so it coverage data is refreshed.

```
:CoverageRefresh
```

### Show coverage

This command show coverage info for the source code in the current buffer.

```
:CoverageCurrentFile
```

## Development

### Contributing

If you'd like to help, check out the
[issues](https://github.com/alepez/vim-llvmcov/issues). I'd greatly appreciate
any contribution you make. Beer is also appreciated ☺

If you have a question, a feature request, or a new idea, don't hesitate to
post new issues or pull requests. Collaboration is the most awesome thing in
the open source community!

## Self-Promotion

Like vim-gtest?  Follow the repository on
[GitHub](https://github.com/alepez/vim-llvmcov) and vote for it on
[vim.org](http://www.vim.org/scripts/script.php?script_id=5323). And if you're
feeling especially charitable, follow [Alessandro Pezzato](http://pezzato.net/)
on [Twitter](http://twitter.com/alepezzato) and
[GitHub](https://github.com/alepez).

If you like the plugin please don't forget to leave a :star: for this project!
This will help me to estimate the plugin popularity and plan further
development.

If you have already starred this repo, thank you!
