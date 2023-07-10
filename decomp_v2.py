import os
import io

WIDTH = 20
HEIGHT = 18

file = 1
page = 0
f_name = "gatsby"
character_pointer = 0
available_height = HEIGHT
filepath = "res/"

def seek_size(current):
    pos = current.tell()
    current.seek(0, io.SEEK_END)
    size = current.tell()
    current.seek(pos) # back to where we were
    return size

def initialize_cfile():
    current.write("#include <gb/gb.h>\n")
    current.write("#include <gbdk/far_ptr.h>\n")
    current.write("#include \"gatsby.h\"\n")
    current.write("#pragma bank 255\n\n")

def initialize_hfile():
    header.write("#include <gb/gb.h>\n")
    header.write("#include <gbdk/far_ptr.h>\n")
    header.write("typedef struct page_t {\n  uint16_t prev_ofs, prev_bank;\n  uint16_t next_ofs, next_bank;\n  unsigned char page_data[360];\n} page_t;\n\n")

def start_page():
    global page
    global f_name
    page = page + 1
    current.write("BANKREF(" + f_name + "_" + str(page) + ")\n")
    current.write("const page_t page_" + str(page) + " = {\n")
    current.write("  .prev_ofs = (uint16_t)(&page_" + str(page - 1) + "), .prev_bank = BANK(gatsby_" + str(page - 1) + "), .next_ofs = (uint16_t)(&page_" + str(page + 1) + "), .next_bank = BANK(gatsby_" + str(page + 1) + "), .page_data = {\n")
    
    #BANKREF_EXTERN(gatsby1)
    #extern const page_t page1;
    header.write("BANKREF_EXTERN(" + f_name + "_" + str(page) + ")\n")
    header.write("extern const page_t page_" + str(page) + ";\n\n")
    global character_pointer
    global available_height
    character_pointer = 0
    available_height = HEIGHT - 1
    return

def end_page():
    current.write("}\n")
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
        if(seek_size(current) > 65536):
            current.close()
            #exit()
            #start next c file
            file += 1
            #if file == 4:
            #    exit()
            current = open(filepath + f_name + str(file) + ".c", "a", encoding="utf8")
            initialize_cfile()
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
        if(len(word) > WIDTH):
            word1 = word[0:available_width - 1] + "-"
            for char in word1:
                place_character(char)
            end_line()
            word = word[available_width:]
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
    if(ch == '’' or ch == '‘'):
        ch = '\''
    if(ch == '—'):
        ch = '-'
    if(ch == '…'):
        ch = '_'
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
    searched_file = "gatsby" + str(iterator)
    if os.path.exists(filepath + searched_file + ".c"):
        os.remove(filepath + searched_file + ".c")
        iterator += 1
    else:
        file_exists = False
# delete the header
if os.path.exists(filepath + "gatsby.h"):
    os.remove(filepath + "gatsby.h")
#delete the c file
if os.path.exists(filepath + "gatsby.c"):
    os.remove(filepath + "gatsby.c")


with open('gatsby.txt', encoding="utf8") as gatsby:
    current = open(filepath + f_name + str(file) + ".c", "a", encoding="utf8")
    header = open(filepath + f_name + ".h", "a", encoding="utf8")
    initialize_cfile()
    initialize_hfile()
    start_page()
    for line in gatsby:
        if(line.find("------------------------------------------------------------------------") != -1):
            #end_page()
            #current.close()
            #exit()
            #fill rest of the page with empty char
            while(available_height != 0):
                end_line()
            continue
        write_next_line(line)
    while(available_height != 0):
        end_line()
    end_page()
    current.close()
    header.close()

