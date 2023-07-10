
A template project with a Makefile that supports sub-directories.

The Makefile will automatically detect and compile new source files
when they are added to the "src" and "res" directories.

Project directories
  - src: Main program source files (.c, .h, .s) can go here
  - res: Program graphics and audio source files (.c, .h, .s) can go here
  - obj: Compiled ROM (.gb) and debug files go in this directory

------------------------------------------

This example project works by using a python script to turn a given .txt file to uncompressed byte maps displayable on the GameBoy thanks to the gbdk-2020 toolkit. 
Every map is one page of text. It needs to be separated into diferent C files because the addressable memory space of the Gameboy is 32 kB, separated in two 16 kB banks. The .txt file alone is already 300+ kB of pure text so multiple banks need to be generated at compile time (and swapped accordingly at run time), hence the diferent files.

The current loaded text is The great Gatsby. Other books could be loaded by changing the .txt file but it would require some changes to the python scripts to account for the diferent name. Also I'm pretty sure the current solution has the number of pages and/or banks hard-coded into the main.c file, I haven't worked on this project for a while.

Future plans include:
  - Making it generic so ANY txt file can be compiled automatically into a readable rom by just swapping the file.
  - Compressing the data and decompressing it into pages at run time.
  - Try to compress multiple characters into the same tile to get more text per line and therefore bigger one-screen pages.
  - Add functionality to save the page you're on for future reads.

If all goes well and these changes are accomplished I will try to make a "library" rom where you can read multiple books in a single rom.
The compression is the main hurdle, as as it is right now it would run out of banks rather quickly. But I don't want to make that rom without making the text more readable. As it is just 20 characters fit on a single line. That makes an otherwise fun way to read a book nothing more than a gimmick.


This software is licensed under CC0. I wish for everyone to have access to see and modify this code in any way, shape, or form. Publicly, privately, or commercially.
I do not own the rights to The Great Gatsby. The original text file was taken from Project Gutenberg (https://www.gutenberg.org/) as by U.S. copyright law the book has entered the public domain.

You are free to use the project as is or modify it to your liking.
