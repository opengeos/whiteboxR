import os 
dir_path = os.path.dirname(os.path.realpath(__file__))
wbt_py = os.path.join(dir_path, "whitebox_tools.py")

# Extract function header
def function_header(line):
    if line.startswith("def"):
        line = line.replace("self, i,", "input,")
        line = line.replace("self, i=None,", "input,")
        line = line.replace("self, output, i=None,", "input, output,")
        line = line.replace("self, ", "")
        line = line.replace("callback=None", "verbose_mode=TRUE")
        line = line.replace("False", "FALSE")
        line = line.replace("True", "TRUE")
        line = line.replace("None", "NULL")
        line = line.replace("def ", "")
        line = line.replace(":", "")
    return line


# Generate R function block
def function_block(line, ff):
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


toolboxes = {
    "# Data Tools #": "data_tools.R",
    "# GIS Analysis #": "gis_analysis.R",
    "# Geomorphometric Analysis #": "terrain_analysis.R",
    "# Hydrological Analysis #": "hydro_analysis.R",
    "# Image Processing Tools #": "image_analysis.R",
    "# LiDAR Tools #": "lidar_analysis.R",
    "# Math and Stats Tools #": "math_stat_analysis.R",
    "# Stream Network Analysis #": "stream_network_analysis.R"
}


# Generate R functions with documentation
ff = None

with open(wbt_py) as f:
    lines = f.readlines()

    for index, line in enumerate(lines):
        if index > 360:            
            line = line.strip()

            # Create an R script for each toolbox
            if line in toolboxes:
                script_path = os.path.join(dir_path, "scripts", toolboxes[line])
                ff = open(script_path, "w")
                print(script_path)

            if line.startswith("def"):
                title = line.replace("def", "").strip().split("(")[0]
                title = title.replace("_", " ")
                title = title[0].upper() + title[1:]
                ff.write("#' {}\n".format(title))
                ff.write("#'\n")
                i = 1
                while True:
                    doc_line = lines[index+i].strip()
                    if doc_line == '"""':
                        break
                    elif doc_line.startswith('"""'):
                        description = doc_line[3:] + '\n'
                        ff.write("#' {}".format(description))
                        ff.write("#'\n")
                    elif ("--" in doc_line) and (doc_line.startswith("callback") == False):
                        if doc_line.startswith('i --'):
                            doc_line = doc_line.replace('i --', 'input --')
                        doc_line = doc_line.replace('-- ', "")
                        param = doc_line.replace("%", " percent")
                        ff.write("#' @param {}\n".format(param))
                    i = i + 1
                ff.write("#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.\n")
                ff.write("#'\n")
                ff.write("#' @return Returns the tool text outputs.\n")
                ff.write("#' @export\n")
                ff.write("#'\n")
                ff.write("#' @examples\n")
                
                fun_head = function_header(line)
                function_block(fun_head, ff)

# ff.close()