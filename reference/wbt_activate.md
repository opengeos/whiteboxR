# Activate 'WhiteboxTools' Extensions

Activate 'WhiteboxTools' Extensions

## Usage

``` r
wbt_activate(
  email,
  activation_key,
  seat = 1,
  destdir = dirname(wbt_exe_path(shell_quote = FALSE))
)
```

## Arguments

- email:

  Email Address

- activation_key:

  Activation Key

- seat:

  Seat Number (Default `1`)

- destdir:

  Directory containing `whitebox_tools` and `/plugins/` folder.

## Value

`0` for success (invisibly). Try-error on error.
