# 0 "main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short* videoBuffer;
# 49 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 68 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 102 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 2 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/15.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/15.1.0/include/stdint.h" 3 4
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 12 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/15.1.0/include/stdint.h" 2 3 4
#pragma GCC diagnostic pop
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 3 "main.c" 2
# 1 "game.h" 1
# 9 "game.h"
typedef struct {
    int x;
    int oldX;
    int y;
    int oldY;
    int xVel;
    int yVel;
    int height;
    int width;
    int inAir;
    int cooldown;
} PLAYER;

typedef struct {
    int x;
    int oldX;
    int y;
    int oldY;
    int xVel;
    int width;
    int height;
    int active;
} BULLET;

typedef struct {
    int x;
    int oldX;
    int y;
    int oldY;
    int yVel;
    int width;
    int height;
    int active;
    int exploding;
    int explosionTimer;
} BALLOONS;


extern PLAYER player;
extern BULLET bullets[10];
extern BALLOONS balloons[10];
extern int health;
extern int score;
extern int highScore;
extern char scoreBuffer[41];
extern char highScoreBuffer[41];


void initGame();
void startScreen();
void pauseScreen();
void loseScreen();
void scoreScreen();
void drawBackground();
void drawPlayer();
void updatePlayer();
void drawBalloons();
void updateBalloons();
void drawBullet();
void updateBullet();
void fireBullet();
int randRange(int min, int max);
void updateCryingAnim();
void cryingAnim();
# 4 "main.c" 2
# 1 "analogSound.h" 1
# 257 "analogSound.h"
enum note {

  REST = 0,
  NOTE_C2 =44,
  NOTE_CS2 =157,
  NOTE_D2 =263,
  NOTE_DS2 =363,
  NOTE_E2 =457,
  NOTE_F2 =547,
  NOTE_FS2 =631,
  NOTE_G2 =711,
  NOTE_GS2 =786,
  NOTE_A2 =856,
  NOTE_AS2 =923,
  NOTE_B2 =986,
  NOTE_C3 =1046,
  NOTE_CS3 =1102,
  NOTE_D3 =1155,
  NOTE_DS3 =1205,
  NOTE_E3 =1253,
  NOTE_F3 =1297,
  NOTE_FS3 =1339,
  NOTE_G3 =1379,
  NOTE_GS3 =1417,
  NOTE_A3 =1452,
  NOTE_AS3 =1486,
  NOTE_B3 =1517,
  NOTE_C4 =1547,
  NOTE_CS4 =1575,
  NOTE_D4 =1602,
  NOTE_DS4 =1627,
  NOTE_E4 =1650,
  NOTE_F4 =1673,
  NOTE_FS4 =1694,
  NOTE_G4 =1714,
  NOTE_GS4 =1732,
  NOTE_A4 =1750,
  NOTE_AS4 =1767,
  NOTE_B4 =1783,
  NOTE_C5 =1798,
  NOTE_CS5 =1812,
  NOTE_D5 =1825,
  NOTE_DS5 =1837,
  NOTE_E5 =1849,
  NOTE_F5 =1860,
  NOTE_FS5 =1871,
  NOTE_G5 =1881,
  NOTE_GS5 =1890,
  NOTE_A5 =1899,
  NOTE_AS5 =1907,
  NOTE_B5 =1915,
  NOTE_C6 =1923,
  NOTE_CS6 =1930,
  NOTE_D6 =1936,
  NOTE_DS6 =1943,
  NOTE_E6 =1949,
  NOTE_F6 =1954,
  NOTE_FS6 =1959,
  NOTE_G6 =1964,
  NOTE_GS6 =1969,
  NOTE_A6 =1974,
  NOTE_AS6 =1978,
  NOTE_B6 =1982,
  NOTE_C7 =1985,
  NOTE_CS7 =1989,
  NOTE_D7 =1992,
  NOTE_DS7 =1995,
  NOTE_E7 =1998,
  NOTE_F7 =2001,
  NOTE_FS7 =2004,
  NOTE_G7 =2006,
  NOTE_GS7 =2009,
  NOTE_A7 =2011,
  NOTE_AS7 =2013,
  NOTE_B7 =2015,
  NOTE_C8 =2017
};

typedef struct noteWithDuration {
  enum note note;
  unsigned char duration;
} NoteWithDuration;

void initSound();
void playDrumSound(unsigned char r, unsigned char s, unsigned char b, unsigned char length, unsigned char steptime);
void playNoteWithDuration(NoteWithDuration *n, unsigned char duty);
void playChannel1(unsigned short note, unsigned char length, unsigned char sweepShift, unsigned char sweepTime, unsigned char sweepDir, unsigned char envStepTime, unsigned char envDir, unsigned char duty);
void playAnalogSound(unsigned short sound);
# 5 "main.c" 2
# 1 "mode4.h" 1
# 9 "mode4.h"
void flipPages();
void setPixel4(int x, int y, u8 colorIndex);
void drawRect4(int x, int y, int width, int height, volatile u8 colorIndex);
void fillScreen4(volatile u8 colorIndex);
void drawImage4(int x, int y, int width, int height, const u16* image);
void drawFullscreenImage4(const u16* image);

void drawChar4(int x, int y, char ch, u8 colorIndex);
void drawString4(int x, int y, char* str, u8 colorIndex);
# 6 "main.c" 2


void initialize();

void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToScoreboard();
void scoreboard();
void goToLose();
void lose();


u16 buttons;
u16 oldButtons;


enum {
    START,
    GAME,
    PAUSE,
    SCOREBOARD,
    LOSE,
};
int state;


int scoreboardVersion = 0;

int main() {

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short*) 0x04000130);

        switch(state) {
            case START:
            start();
            break;
            case GAME:
            game();
            break;
            case SCOREBOARD:
            scoreboard();
            break;
            case PAUSE:
            pause();
            break;
            case LOSE:
            lose();
            break;
        }
    }

    return 0;

}

void initialize() {

    mgba_open();
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | (1 << (8 + (2 % 4))) | (1 << 4);

    buttons = (*(volatile unsigned short*) 0x04000130);
    oldButtons = 0;

    goToStart();
}

void goToStart() {
    startScreen();
    waitForVBlank();
    flipPages();
    initGame();
    state = START;
}

void start() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        playAnalogSound(11);
        goToGame();
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        scoreboardVersion = 0;
        goToScoreboard();
    }
}

void goToGame() {
    drawBackground();
    waitForVBlank();
    flipPages();
    state = GAME;
}

void game() {
    drawBackground();
    updatePlayer();
    updateBullet();
    updateBalloons();
    waitForVBlank();
    drawBalloons();
    drawPlayer();
    drawBullet();
    flipPages();

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToPause();
    }

    if (health <= 0) {
        playAnalogSound(17);
        goToLose();
    }
}

void goToPause() {
    pauseScreen();
    waitForVBlank();
    flipPages();
    state = PAUSE;
}

void pause() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToGame();
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        scoreboardVersion = 1;
        goToScoreboard();
    }
}

void goToLose() {
    state = LOSE;
}

void lose() {
    loseScreen();
    updateCryingAnim();
    waitForVBlank();
    flipPages();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToStart();
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        scoreboardVersion = 2;
        goToScoreboard();
    }
}

void goToScoreboard() {
    scoreScreen();
    waitForVBlank();
    flipPages();
    state = SCOREBOARD;
}

void scoreboard() {
    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {

        if (scoreboardVersion == 0) {
            goToStart();
        } else if (scoreboardVersion == 1){
            goToPause();
        } else {
            goToLose();
        }
    }
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToStart();
    }
}
