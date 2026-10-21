# 'WhiteboxTools' Tool Parameters

This data set is a `data.frame` containing tool parameters and
associated metadata

## Usage

``` r
wbttoolparameters
```

## Format

An object of class `data.frame` with 2313 rows and 13 columns.

## Source

[WhiteboxTools](https://github.com/jblindsay/whitebox-tools/releases/)

## Variables

- `"function_name"` - R function name

- `"tool_name"` - 'WhiteboxTools' tool name

- `"name"` - parameter name

- `"flags"` - flags used to specify parameter on command line; comma
  separated

- `"description"` - parameter description

- `"parameter_class"` - parameter type

- `"parameter_detail"` - parameter details; character: data type
  followed by colon and more specifics, For OptionList possible values,
  comma-separated (if defined)

- `"default_value"` - parameter default value, if any

- `"optional"` - parameter "optional" flag; note that some combination
  of optional parameters may be required for certain conditions

- `"label"` - labels for selected subset of `"flags"` **used as R
  function argument names** for `wbt_` functions

- `"is_input"` - logical. Classification of 'input' parameters

- `"is_output"` - logical. Classification of 'output' parameters

## See also

[wbttools](wbttools.md)
[`wbt_tool_parameters()`](wbt_tool_parameters.md)
