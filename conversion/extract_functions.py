import os 
dir_path = os.path.dirname(os.path.realpath(__file__))
wbt_py = os.path.join(dir_path, "whitebox_tools.py")

ff = open(os.path.join(dir_path, "functions.txt"), "w")

with open(wbt_py) as f:
    lines = f.readlines()
    for index, line in enumerate(lines):
        if index > 360:
            line = line.strip()
            if line.startswith("def"):
                print(line)
                line = line.replace("self, i,", "input,")
                line = line.replace("self, ", "")
                line = line.replace("callback=None", "verbose_mode=TRUE")
                line = line.replace("False", "FALSE")
                line = line.replace("True", "TRUE")
                line = line.replace("None", "NULL")
                line = line.replace("def ", "")
                line = line.replace(":", "")
                print(line)
                ff.write(line + "\n")

ff.close()