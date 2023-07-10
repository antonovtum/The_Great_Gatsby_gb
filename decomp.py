import os
import io

WIDTH = 20
HEIGHT = 18

file = 1
page = 0
f_name = "gatsby_" + str(file)
character_pointer = 0
available_height = HEIGHT
filepath = "res/"

def seek_size(current):
    pos = current.tell()
    current.seek(0, io.SEEK_END)
    size = current.tell()
    current.seek(pos) # back to where we were
    return size

def initialize_cfile(current, f_name):
    current.write("#include <gb/gb.h>\n")
    current.write("#pragma bank 255\n")
    current.write("BANKREF(" + f_name + ")\n")

def start_page():
    global page
    global f_name
    page = page + 1
    current.write("const unsigned char " + f_name + "_" + str(page) + "[] = {\n")
    global character_pointer
    global available_height
    character_pointer = 0
    available_height = HEIGHT - 1
    return

def end_page():
    current.write("};\n\n")
    return

def end_line():
    global character_pointer
    global available_height
    global file
    global current
    global f_name
    #fill the rest of the width with empty chars
    available_width = WIDTH-character_pointer
    for i in range(available_width):
        place_character(" ")
    current.write("\n")
    character_pointer = 0
    if(available_height == 0):
        #go to next page
        end_page()
        if(seek_size(current) > 14336):
            current.close()
            #exit()
            #start next c file
            file += 1
            #if file == 4:
            #    exit()
            f_name = "gatsby_" + str(file)
            current = open(filepath + f_name + ".c", "a", encoding="utf8")
            initialize_cfile(current, f_name)
        start_page()
    else:
        available_height = available_height - 1

def write_next_line(line):
    if(line == "\n"):
        #finish current line and write an empty one
        end_line()
        end_line()
        return
    words = line.split()
    global character_pointer
    global available_height
    for word in words:
        #need to go for next line
        available_width = WIDTH-character_pointer
        if(len(word) > WIDTH-character_pointer):
            end_line()
        
        #word fits, put it in
        for char in word:
            place_character(char)
        available_width = WIDTH-character_pointer
        if(available_width > 0):
            place_character(' ')

def place_character(ch):
    ### special characters
    if(ch == '“' or ch == '”'):
        ch = '"'
    if(ch == '’'):
        ch = '\''
    if(ch == '—'):
        ch = '-'
    if(ord(ch) > 255):
        ch = '?'
    ###
    ch_tile_val = hex(ord(ch) - 32)
    global character_pointer
    if(available_height == 0 and character_pointer == WIDTH-1):
        current.write(str(ch_tile_val))
    else:
        current.write(str(ch_tile_val) + ", ")
    character_pointer += 1

#### MAIN ####
# delete existing c files first
file_exists = True
iterator = 1
while(file_exists):
    searched_file = "gatsby_" + str(iterator)
    if os.path.exists(filepath + searched_file + ".c"):
        os.remove(filepath + searched_file + ".c")
        iterator += 1
    else:
        file_exists = False
# delete the header
if os.path.exists(filepath + "gatsby.h"):
    os.remove(filepath + "gatsby.h")


with open('gatsby.txt', encoding="utf8") as gatsby:
    current = open(filepath + f_name + ".c", "a", encoding="utf8")
    #header = open(filepath + "gatsby.h", "a", encoding="utf8")
    initialize_cfile(current, f_name)
    start_page()
    for line in gatsby:
        if(line.find("------------------------------------------------------------------------") != -1):
            #end_page()
            #current.close()
            #exit()
            #fill rest of the page with empty char
            while(available_height != 0):
                end_line()
        write_next_line(line)
    while(available_height != 0):
        end_line()
    end_page()
    current.close()

