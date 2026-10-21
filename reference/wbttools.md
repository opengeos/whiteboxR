# 'WhiteboxTools' Tool List

This data set is a `data.frame` containing tools by name and associated
R function name

## Usage

``` r
wbttools
```

## Format

An object of class `data.frame` with 562 rows and 8 columns.

## Source

[WhiteboxTools](https://github.com/jblindsay/whitebox-tools/releases/)

## Variables

- `"tool_name"` - 'WhiteboxTools' tool name

- `"function_name"` - R function name

- `"toolbox_name"` - 'WhiteboxTools' toolbox name

- `"label"` - 'WhiteboxTools' tool label

- `"description"` - Brief description

- `"github"` - Link to related code on 'GitHub'

- `"book"` - Link to 'WhiteboxTools' Manual

- `"is_extension"` - Tool is part of 'General Toolset Extension' (GTE),
  as opposed to the "open core"

## See also

[wbttoolparameters](wbttoolparameters.md)
[`wbt_list_tools()`](wbt_list_tools.md)
