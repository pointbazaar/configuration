# AGENTS.md

These apply to every session, a repositories own `AGENTS.md` may add or override.

## coding style (all programming languages)
- do not write functions longer than 60 lines
- avoid writing inline lambdas, prefer writing separate functions
- do not implement single-line getter/setter functions
- do not implement unnecessary options, parameters or knobs if sane defaults can be used
- prefer to implement in C or C++
- do not write python or javascript code unless explicitly asked or modifying existing such code

## coding style (meson specific)
- use `meson format -i` to format meson files
- format all the meson files that you modify

## coding style (C/C++ specific)
- these rules are in addition to the above section
- use `clang-format` to format the code
- use `clang-format` before committing changes
- do not call `std::exit`
- do not call `std::terminate`
- do not re-define constants which are available from C++ STL headers
- do not re-define functions which are available from C++ STL headers
- do not write non-template function definitions into .hpp files
- prefer constexpr over preprocessor directives because it preserves the parsing
  and typechecking of disabled code.

## commit message
- format your commit messages as 50/72
- when describing unit tests or how you tested something, do that
  in the `Tested:` section.
- when referring to specifications, websites and other content not in the repo,
  you should use a `References:` section
- commands and their output should be within triple backticks like
  ```
  $ echo hi
  hi
  ```

## Tested section
- this section comes before the `References:` section
- do not mention that the code compiles or that tests pass,
  that is a baseline requirement instead of noteworthy commit-message content
- if the patch was tested on hardware/qemu, `Tested:` section should contain
  the commands that have been run and their output. This applies only to commands
  relevant for testing the patch, not setup/teardown.
- prefer issuing simple human-readable commands for testing over complicated testing scripts

## References section
example:
```
References:
[1] https://www.dmtf.org/sites/default/files/standards/documents/DSP2065_2022.1.pdf
```

## git usage
- do not create separate git worktrees, create normal branches instead

## copyright
- if you add copyright comments to a new file, use `SPDX-FileCopyrightText`
  and `SPDX-License-Identifier` instead of bloated full-size copyright headers
