import os 
dir_path = os.path.dirname(os.path.realpath(__file__))
fun_file = os.path.join(dir_path, "functions.txt")

ff = open(os.path.join(dir_path, "blocks.txt"), "w")


with open(fun_file) as f:
    lines = f.readlines()
    for line in lines:
        line = line.strip()
        function_name = line[0:line.find("(")]
        start = line.find("(") + 1
        end = len(line) -1
        argument = line[start:end]
        function_head = function_name + " <- function(" + argument + ") {"
        ff.write(function_head + "\n")
        ff.write("  wbt_exe <- wbt_exe_path()" + "\n")
        ff.write('  args <- ""' + "\n")
        arguments = argument.split(",")
        for item in arguments:
            item = item.strip()
            if "=" not in item:
                ff.write('  args <- paste(args, paste0("--' + item + '=", ' + item + '))' + "\n")
            elif "verbose" not in item:
                para = item.split("=")[0]
                ff.write('  if (!is.null(' + para + ')) {' + "\n")
                ff.write('    args <- paste(args, paste0("--' + para + '=", ' + para + "))" + "\n")
                ff.write('  }' + "\n")
                
        ff.write('  tool_name <- match.call()[[1]]' + "\n")
        ff.write('  wbt_run_tool(tool_name, args, verbose_mode)' + '\n')
        ff.write('}' + "\n")
        ff.write('\n\n')

ff.close()
