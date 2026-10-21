# Convenience method for setting RUST_BACKTRACE options for debugging

Convenience method for setting RUST_BACKTRACE options for debugging

## Usage

``` r
wbt_rust_backtrace(RUST_BACKTRACE = c("0", "1", "full"))
```

## Arguments

- RUST_BACKTRACE:

  One of `"0"`, `"1"`, `"full"`, Logical values are converted to integer
  and then character.

## Value

value of system environment variable `RUST_BACKTRACE`

## Examples

``` r
if (FALSE) { # \dontrun{
wbt_rust_backtrace(TRUE)
} # }
```
