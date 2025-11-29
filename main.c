#include "gba.h"
#include "print.h"
#include "game.h"
#include "analogSound.h"
#include "mode4.h"

//function headers
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

//buttons
u16 buttons;
u16 oldButtons;

//game states
enum {
    START,
    GAME,
    PAUSE,
    SCOREBOARD,
    LOSE,
}; 
int state;

//variable for switching scoreboard buttons
int scoreboardVersion = 0;

int main() {

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

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
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;

    buttons = REG_BUTTONS;
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
    if (BUTTON_PRESSED(BUTTON_START)) {
        playAnalogSound(11);
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
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

    if (BUTTON_PRESSED(BUTTON_START)) {
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
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
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
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
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
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        //switches which screen select takes player depending on where they came from
        if (scoreboardVersion == 0) {
            goToStart();
        } else if (scoreboardVersion == 1){
            goToPause();
        } else {
            goToLose();
        }
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}