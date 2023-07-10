#include <gb/gb.h>
#include <stdio.h>
#include <gbdk/far_ptr.h>
#include <stdbool.h>
#include <stdlib.h>
#include <gb/font.h>

#include "../res/Bookmark_tiles.h"
#include "../res/bookmark.h"

#include "../res/gatsby.h"

font_t book_font;

page_t current_page;
static uint16_t page_number;
static uint16_t page_number_temp;
static bool page_select;
static char page_chars[4];
static uint8_t p_turner_cd; 
static uint8_t p_turner_i; 

bool h_right, h_left, h_a, h_b;
bool r_button_down, l_button_down, a_button_down, b_button_down;
uint8_t joy;

uint8_t frame;
uint8_t end_p_height; //iterator
uint8_t mapped_bookmark;

uint16_t i;
bool forward;

void main(void);
void update_joy(void);
void next_page(void);
void prev_page(void);
void choose_page(void);
void update_page_bookmark(void);
void jump_page(void);
void resolve_jumping_point(void);
int16_t map(int16_t x);

// x, 1, 948, 255, 136
int16_t map(int16_t x) {
    return (int32_t)((int32_t)(((int32_t)(x) - 1) * -119) / 947) + 255;
}

void update_joy(void){
    joy = joypad();
    //right
    if(joy & J_RIGHT){
        if(h_right){
            r_button_down = false;
        } else{
            h_right = true;
            r_button_down = true;
        }
    } else{
        h_right = false;
        r_button_down = false;
    }
    //left
    if(joy & J_LEFT){
        if(h_left){
            l_button_down = false;
        } else{
            h_left = true;
            l_button_down = true;
        }
    } else{
        h_left = false;
        l_button_down = false;
    }
    //a
    if(joy & J_A){
        if(h_a){
            a_button_down = false;
        } else{
            h_a = true;
            a_button_down = true;
        }
    } else{
        h_a = false;
        a_button_down = false;
    }
    //b
    if(joy & J_B){
        if(h_b){
            b_button_down = false;
        } else{
            h_b = true;
            b_button_down = true;
        }
    } else{
        h_b = false;
        b_button_down = false;
    }
}

void next_page(void){
    if(current_page.next_bank == NULL) return;
    SWITCH_ROM(current_page.next_bank);
    current_page = *(page_t*)(current_page.next_ofs);
    set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
    page_number++;
}

void prev_page(void){
    if(current_page.prev_bank == NULL) return;
    SWITCH_ROM(current_page.prev_bank);
    current_page = *(page_t*)(current_page.prev_ofs);
    set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
    page_number--;
}

void resolve_jumping_point(void){
    //check if it's close to any edge
    if(page_number < 238){
        //go from the beggining
        SWITCH_ROM( BANK(gatsby_1) );
        current_page = page_1;
        i = 1;
        forward = true;
        return;
    }
    if(page_number > 711){
        //go from the end
        SWITCH_ROM( BANK(gatsby_948) );
        current_page = page_948;
        i = 948;
        forward = false;
        return;
    }
    //check if objective is within 237 range of the current page
    if(page_number > page_number_temp - 237 && page_number < page_number_temp){
        //we're in the right bank
        i = page_number_temp;
        forward = false;
        return;
    }
    if(page_number < page_number_temp + 237 && page_number > page_number_temp){
        i = page_number_temp;
        forward = true;
        return;
    }
    //default to search from the middle
    SWITCH_ROM( BANK(gatsby_474) );
    current_page = page_474;
    i = 474;
    if(page_number <= 474){
        forward = false;
        return;
    }
    forward = true;    
    //look for closest known page (1, 474, 948) 1-237, 238-474, 475-711, 712-948
}

void jump_page(void){
    //if there's no jump just plain return
    if(page_number == page_number_temp) return;

    resolve_jumping_point();

    //SWITCH_ROM( BANK(gatsby_1) );
    //current_page = page_1;
    //for(i=1; i < page_number; i++){
        //SWITCH_ROM(current_page.next_bank);
        //current_page = *(page_t*)(current_page.next_ofs);
    //}
    while(i != page_number){
        if(forward){
            SWITCH_ROM(current_page.next_bank);
            current_page = *(page_t*)(current_page.next_ofs);
            i++;
            continue;
        } else{
            SWITCH_ROM(current_page.prev_bank);
            current_page = *(page_t*)(current_page.prev_ofs);
            i--;
            continue;
        }
    }
    set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
}

void update_page_bookmark(void){
    //text display
    itoa(page_number, page_chars, 10);
    if(page_number < 10){
        page_chars[0] = page_chars[0] - 32;
        set_bkg_tile_xy(1, 19, 0x00);
        set_bkg_tile_xy(2, 19, 0x00);
        set_bkg_tile_xy(3, 19, page_chars[0]);
    } else if(page_number < 100){
        page_chars[0] = page_chars[0] - 32;
        page_chars[1] = page_chars[1] - 32;
        set_bkg_tile_xy(1, 19, 0x00);
        set_bkg_tile_xy(2, 19, page_chars[0]);
        set_bkg_tile_xy(3, 19, page_chars[1]);
    } else{
        page_chars[0] = page_chars[0] - 32;
        page_chars[1] = page_chars[1] - 32;
        page_chars[2] = page_chars[2] - 32;
        set_bkg_tile_xy(1, 19, page_chars[0]);
        set_bkg_tile_xy(2, 19, page_chars[1]);
        set_bkg_tile_xy(3, 19, page_chars[2]);
    }
    //remap value
    mapped_bookmark = map((int16_t)(page_number));
}

void choose_page(void){
    if(h_right){
        if(r_button_down){
            p_turner_cd = 20;
            p_turner_i = 20;
        }
        if(p_turner_cd == p_turner_i){
            p_turner_i = 0;
            p_turner_cd--;
            if(!p_turner_cd) p_turner_cd = 1;
            page_number = page_number == (uint16_t)(948) ? 1 : page_number + 1;
            update_page_bookmark();
        }
        p_turner_i++;
    }
    if(h_left){
        if(l_button_down){
            p_turner_cd = 20;
            p_turner_i = 20;
        }
        if(p_turner_cd == p_turner_i){
            p_turner_i = 0;
            p_turner_cd--;
            if(!p_turner_cd) p_turner_cd = 1;
            page_number = page_number == 1 ? (uint16_t)(948) : page_number - 1;
            update_page_bookmark();
        }
        p_turner_i++;
    }
}

void interrupt_LCD(void){
    if(LYC_REG == 0x00){
        SCX_REG = 0x00;
        LYC_REG = (144 - end_p_height);
    }
    else if(LYC_REG == (144 - end_p_height)){
        SCX_REG = mapped_bookmark;
        LYC_REG = 0x00;
    }

}

void main(void)
{
    CRITICAL {
        STAT_REG = 0x45;
        LYC_REG = 0x00;
        add_LCD(interrupt_LCD);
    }
    set_interrupts(VBL_IFLAG | LCD_IFLAG);

    font_init();
    book_font = font_load(font_spect);
    font_set(book_font);

    SHOW_BKG;
    h_right = false;
    h_left = false;
    page_select;
    frame = 0;
    SWITCH_ROM( BANK(gatsby_1) );
    printf("Hello world");
    current_page = page_1;
    page_number = 1;
    set_bkg_data(102, 10, Bookmark_tiles);
    set_bkg_tiles(0, 18, 32, 3, bookmark);
    set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
    // Loop forever
    while(1) {

        update_joy();
        
        if(a_button_down){
            page_select = !page_select;
            if(page_select){
                page_number_temp = page_number;
                update_page_bookmark();
                for(end_p_height=0; end_p_height<20; end_p_height++){
                    move_bkg(0, end_p_height);
                    wait_vbl_done();
                }
                
            } else{
                jump_page();

                for(end_p_height=20; end_p_height!=255; end_p_height--){
                    move_bkg(0, end_p_height);
                    wait_vbl_done();
                }
                end_p_height = 0;
            }
        }

        if(b_button_down && page_select){
            page_select = false;
            for(end_p_height=20; end_p_height!=255; end_p_height--){
                move_bkg(0, end_p_height);
                wait_vbl_done();
            }
            end_p_height = 0;
            page_number = page_number_temp;
        }

        if(page_select){
            choose_page();
            wait_vbl_done();
            continue;
        }
        if(r_button_down){
            next_page();
        }
        if(l_button_down){
            prev_page();
        }

		// Done processing, yield CPU and wait for start of next frame
        frame++;
        wait_vbl_done();
    }
}
