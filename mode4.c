#include "mode4.h"
#include "font.h"

// Sets a pixel in mode 4
void setPixel4(int x, int y, u8 colorIndex) {
    // TODO Fill this function in from your Lab06
    int offset = ((y * 240) + x) >> 1;
    unsigned short originalShort = videoBuffer[offset];
    if (x & 1) {
        videoBuffer[offset] = colorIndex << 8 | (originalShort & 0x00FF);
    } else {
        videoBuffer[offset] = colorIndex | (originalShort & 0xFF00);
    }
}

// Draws a rectangle in mode 4
void drawRect4(int x, int y, int width, int height, volatile u8 colorIndex) {
    // TODO Fill this function in from your Lab06
    volatile unsigned short color = colorIndex | (colorIndex << 8);
    for (int row = 0; row < height; row++) {
        int start = ((y + row) * SCREENWIDTH + x) >> 1;
        u16 *dst = &videoBuffer[start];
        //x is even
        if ((x & 1) == 0) {
            int count = width >> 1;
            DMANow(3, &color, dst, DMA_SOURCE_FIXED | count);
            //odd width case
            if ((width & 1)) {
                setPixel4(x + width - 1, y + row, colorIndex);
            }
        //x is odd
        } else {
            setPixel4(x, y + row, colorIndex);
            int count = (width - 1) >> 1;
            DMANow(3, &color, dst + 1, DMA_SOURCE_FIXED | count);
            //even width case
            if ((width & 1) == 0) {
                setPixel4(x + width - 1, y + row, colorIndex);
            }
        }
    }
}

// Fills the screen in mode 4 using specified palette index
void fillScreen4(volatile u8 colorIndex) {
    // TODO Fill this function in from your Lab06
    volatile unsigned int color = colorIndex << 24 | colorIndex << 16 | colorIndex << 8 | colorIndex;
    DMANow(3, &color, videoBuffer, DMA_SOURCE_FIXED | 19200);
}

// Draws an image in mode 4
void drawImage4(int x, int y, int width, int height, const u16* image) {
    // TODO Fill this function in from your Lab06
    for (int i = 0; i < height; i++) {
        unsigned short *dst = &videoBuffer[(y + i) * 240 / 2 + x / 2];
        const unsigned short *src = &image[i * width / 2];
        DMANow(3, src, dst, width / 2);
    }
}

// Draws a full-screen image in mode 4
void drawFullscreenImage4(const u16* image) {
    // TODO Fill this function in from your Lab06
    DMANow(3, image, videoBuffer, 19200);
}

// Draws the specified character at the specified location in Mode 4
void drawChar4(int x, int y, char ch, u8 colorIndex) {
    for (int c = 0; c < 6; c++) {
        for (int r = 0; r < 8; r++) {
            if (fontdata_6x8[(48 * ch + c + 6 * r)]) setPixel4(x + c, y + r, colorIndex);
        }
    }
}

// Draws the specified string at the specified location in Mode 3
void drawString4(int x, int y, char* str, u8 colorIndex) {
    while (*str) {
        drawChar4(x, y, *str, colorIndex);
        str++;
        x += 6;
    }
}

// Flips page being displayed and page being drawn to
void flipPages() {
    if (REG_DISPCTL & DISP_BACKBUFFER) {
        videoBuffer = BACKBUFFER;
    } else {
        videoBuffer = FRONTBUFFER;
    }
    REG_DISPCTL ^= DISP_BACKBUFFER;
}