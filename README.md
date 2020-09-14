# ffi-repro

This repo reproduces a regression from GHC 8.8.4 to 8.10.2 . It seems that `cxx-options` are not passed to the C++ compiler anymore.
In particular, we're successfully passing `-optc-D__LIFE_MEANING__=42` in 8.8 but not in 8.10!

You can easily run this example if you have `ghcup` installed to switch compilers:

    make set_8_8 clean exec
    # Prints "Wow, this is it: 42"

    make set_8_10 clean exec
    # Compilation fails in C++ error pragma ("no meaning found")

For your convenience, the output from my attempts on OSX and Linux have been saved in `output`.
