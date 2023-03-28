### Add `wbt_result` class, and `wbt()` pipelines

The current way of invoking `system()` is not the most forgiving when it comes to syntax errors or misspecification of arguments. Often users are met with something unpleasant in the form of a Rust backtrace if their input led to an incomplete or incorrectly parsed `system()` call.

On top of that, many R users are accustomed to working with raster/vector data in one or more of the "spatial" data packages. A key benefit of using R as a spatial data analysis environment is powerful linkages between tools. Better integration of `whitebox` with user package preferences and project specific parameters (such as Coordinate Reference System transformations, batch processing) would provide added benefit to R users. 

I have proposed an alternate approach to this with new S3 method: `wbt()`. This is not necessarily a replacement for the hard-coded option, but showing some of the above benefits that come from working with tool metadata to provide a more generic interface.

I have provisionally defined the following `wbt()` methods:

 - `wbt.wbt_result()`
 - `wbt.character()`
 - `wbt.function()`
 - `wbt.missing()`
 
`wbt()` works a lot like `wbt_run_tool()` where you specify a tool name to run; except it uses non-standard evaluation to provide tool parameter input. `wbt.character()` is the main interface to getting started with these methods. It just takes a tool name as a character, or an expression that can be substituted and deparsed to a tool name. 

The `wbt()` methods return a value that inherits a "new" S3 class `"wbt_result"` (just a `list()`). This stores information about the inputs and arguments to WhiteboxTools. It can contain errors and information about the results

 - This setup allows for generic integration of different spatial object types R users might want to use as input. 
 
 - It also allows for propagation and handling of Coordinate Reference Systems and user R package/object input/output preferences
 
An added feature is that `wbt()` method can take a `wbt_result` as input. 

 - It will try to take the output from the previous result and pass it as the input to the next. 
 
   - This can be combined with your favorite pipe operator (`%>%` `|>`) to "chain" together calls to WhiteboxTools. 
   
 - If you do make use of this feature the prior results are stored in order in the `"history"` element of the `wbt_result`

The `wbt.function()` allows for non-standard evaluation of expressions such as `wbt(wbt_breach_depressions, ...)` which can be particularly handy for auto-complete in GUI like RStudio, but relies on that function being defined in the package. I am not sure that the benefits outweigh the complexities here as the function `wbt_breach_depressions()` is not called by `wbt()`, it is used in name only to build a call for `wbt_run_tool()`.
