#include "gba.h"
#include "game.h"
#include "analogSound.h"
#include "mode4.h"
#include "print.h"
#include "pirate.h"
#include "start.h"
#include "pixelSky.h"
#include "ship.h"
#include "balloon.h"
#include "explode.h"
#include "crying1.h"
#include "crying2.h"
#include "crying3.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

//structs
PLAYER player;
BULLET bullets[BULLETCOUNT];
BALLOONS balloons[BALLOONCOUNT];

//dimensions for ship hitboxes
int shipBot1 = 60;
int shipBot2 = 53;
int shipHalf = 127;
int rightWidth = 240 - 127;

//variables for game mechanics and animations
int health = 10;
int score = 0;
int highScore = 0;
int cryTimer = 0;
int cryFrame = 0;

//string buffers
char scoreBuffer[41];
char highScoreBuffer[41];

void initGame() {
    initSound();

    //initialize player
    player.x = 8;
    player.oldX = player.x;
    //y uses fixed point for weaker gravity
    player.y = 107 << 3;
    player.oldY = player.y;
    player.xVel = 0;
    player.yVel = 0;
    player.width = 16;
    player.height = 28 << 3;
    player.inAir = 0;
    player.cooldown = 5;

    //intialize rand
    srand(time(NULL));

    //initialize balloons
    for (int i = 0; i < BALLOONCOUNT; i++) {
        balloons[i].width = 16;
        balloons[i].height = 0;
        balloons[i].y = 159;
        balloons[i].yVel = -1;
        balloons[i].active = 0;
        balloons[i].exploding = 0;
    }

    //initialize bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].width = 2;
        bullets[i].height = 2;
        bullets[i].xVel = 4;
        bullets[i].active = 0;
    }

    //resets score and health every game
    score = 0;
    sprintf(scoreBuffer, "%d", score);
    health = 10;
}

//Creates a range for rand
int randRange(int min, int max) {
    return rand() % (max - min + 1) + min;
}

//draws start screen
void startScreen() {
    DMANow(3, startPal, BG_PALETTE, startPalLen / 2);
    drawFullscreenImage4(startBitmap);

    drawRect4(40, 14, 174, 9, START_BOX);
    drawString4(40, 15, "PROTECT YOUR AIRSHIP, PIRATE!", START_TEXT);

    drawRect4(90, 139, 67, 9, START_BOX);
    drawString4(90, 140, "PRESS START", START_TEXT);
}

//draws pause screen
void pauseScreen() {
    DMANow(3, pixelSkyPal, BG_PALETTE, pixelSkyPalLen / 2);
    drawFullscreenImage4(pixelSkyBitmap);
    drawRect4(98, 79, 37, 9, BLACK);
    drawString4(98, 80, "PAUSED", WHITE);
}

//draws lose screen
void loseScreen() {
    DMANow(3, pixelSkyPal, BG_PALETTE, pixelSkyPalLen / 2);
    drawFullscreenImage4(pixelSkyBitmap);
    drawRect4(96, 20, 55, 9, BLACK);
    drawString4(96, 21, "GAME OVER", WHITE);
    drawRect4(73, 50, 96, 9, BLACK);
    drawString4(73, 51, "FINAL SCORE:", WHITE);
    drawString4(148, 51, scoreBuffer, WHITE);
    cryingAnim();
    drawRect4(60, 110, 146, 9, BLACK);
    drawString4(60, 111, "I failed you, captain...", WHITE);
}

//timer shows image for 10 frames before moving to next
void updateCryingAnim() {
    cryTimer++;
    if (cryTimer % 10 == 0) {
        cryFrame++;
        if (cryFrame > 2) {
            cryFrame = 0;
        }
    }
}

//loops through animation
void cryingAnim() {
    switch (cryFrame) {
        case 0:
        drawImage4(100, 70, 48, 40, crying1Bitmap);
        break;
        case 1:
        drawImage4(100, 70, 48, 40, crying2Bitmap);
        break;
        case 2:
        drawImage4(100, 70, 48, 40, crying3Bitmap);
        break;
    }
}

//draws scoreboard screen
void scoreScreen() {
    DMANow(3, pixelSkyPal, BG_PALETTE, pixelSkyPalLen / 2);
    drawFullscreenImage4(pixelSkyBitmap);
    if (score > highScore) {
        highScore = score;
    }
    sprintf(highScoreBuffer, "%d", highScore);
    drawRect4(70, 60, 90, 9, BLACK);
    drawString4(70, 61, "HIGH SCORE:", WHITE);
    drawString4(136, 61, highScoreBuffer, WHITE);
    drawRect4(70, 80, 90, 9, BLACK);
    drawString4(70, 81, "YOUR SCORE:", WHITE);
    drawString4(136, 81, scoreBuffer, WHITE);
}

//draws background of game
void drawBackground() {
    DMANow(3, shipPal, BG_PALETTE, shipPalLen / 2);
    drawFullscreenImage4(shipBitmap);

    //health bar
    drawRect4(80, 40, 100, 3, RED);
    drawRect4(80, 40, health * 10, 3, GREEN);

    drawRect4(0, 0, 64, 9, GAME_BLACK);
    drawString4(0, 1, "SCORE:", GAME_WHITE);
    drawString4(36, 1, scoreBuffer, GAME_WHITE);
}

//draws player
void drawPlayer() {
    drawRect4(player.oldX, player.oldY / 8, player.width, player.height/ 8, BACKGROUND);
    drawImage4(player.x, player.y / 8, player.width, player.height / 8, pirateBitmap);
}

//updates player movement
void updatePlayer() {
    if (BUTTON_HELD(BUTTON_LEFT) && (player.x - 1 > 0)) {
        player.xVel = -2;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && (player.x + player.width < 63)) {
        player.xVel = 2;
    } else {
        player.xVel = 0;
    }
    player.oldX = player.x;
    player.x += player.xVel;

    //jump
    if (BUTTON_PRESSED(BUTTON_UP) && !player.inAir) {
        playAnalogSound(8);
        player.yVel = -5 << 3;
        player.inAir = 1;
    }
    if (player.inAir) {
        player.yVel += (int) (.25 * 8);
    }
    player.oldY = player.y;
    player.y += player.yVel;

    //shooting
    if (BUTTON_PRESSED(BUTTON_A)) {
        fireBullet();
    }

    //collision for platform
    if (collision(player.x, player.y / 8, player.width, player.height / 8, 0, 135, 62, 14)) {
        player.y = 107 << 3;
        player.oldY = player.y;
        player.inAir = 0;
        player.yVel = 0;
    }
}

//draws balloons
void drawBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if (balloons[i].active) {
            drawRect4(balloons[i].x, balloons[i].oldY, balloons[i].width, balloons[i].height, BACKGROUND);
            drawImage4(balloons[i].x, balloons[i].y, balloons[i].width, balloons[i].height, balloonBitmap);
        } else if (balloons[i].exploding) {
            //displays explosion for certain amount of frames using timer
            if (balloons[i].explosionTimer > 0) {
                drawImage4(balloons[i].x, balloons[i].oldY, 16, 16, explodeBitmap);
                balloons[i].explosionTimer--;
            } else {
                balloons[i].exploding = 0;
                drawRect4(balloons[i].x, balloons[i].oldY, 16, 16, BACKGROUND);
            }
        }
    }
}

//updates balloon logic
void updateBalloons() {
    for (int i = 0; i < BALLOONCOUNT; i++) {
        if (!balloons[i].active) {
            if (randRange(1, 500) == 5) {
                balloons[i].active = 1;
                balloons[i].x = randRange(79, 200);
                balloons[i].explosionTimer = 10;
            }
        //balloons are active
        } else {
            //movement
            if (balloons[i].height >= 20) {
                balloons[i].height = 20;
            } else {
                //only draws portion of image while offscreen
                balloons[i].height = 160 - balloons[i].y + (-1 * balloons[i].yVel + 1);
            }

            balloons[i].oldY = balloons[i].y;
            balloons[i].y += balloons[i].yVel;

            //collision with ship
            if (collision(balloons[i].x, balloons[i].y, balloons[i].width, balloons[i].height, shipHalf, 0, rightWidth, shipBot1) 
                || collision(balloons[i].x, balloons[i].y, balloons[i].width, balloons[i].height, 0, 0, shipHalf, shipBot2)) {
                    balloons[i].active = 0;
                    balloons[i].y = 159;
                    balloons[i].height = 0;
                    balloons[i].exploding = 1;
                    playAnalogSound(4);
                    health--;
            }
        }
    }
}

//draws bullets
void drawBullet() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (bullets[i].active) {
            drawRect4(bullets[i].oldX, bullets[i].y, bullets[i].width, bullets[i].height, BACKGROUND);
            drawRect4(bullets[i].x, bullets[i].y, 2, 2, GAME_WHITE);
        }
    }
}

//updates bullet logic
void updateBullet() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (bullets[i].active) {
            bullets[i].oldX = bullets[i].x;
            bullets[i].x += bullets[i].xVel;

            //checks collision with balloons
            for (int j = 0; j < BALLOONCOUNT; j++) {
                if (collision(bullets[i].x, bullets[i].y, bullets[i].width, bullets[i].height, 
                    balloons[j].x, balloons[j].y, balloons[j].width, balloons[j].height)) {
                        balloons[j].active = 0;
                        balloons[j].y = 159;
                        balloons[j].height = 0;
                        balloons[j].exploding = 1;
                        playAnalogSound(4);
                        score++;
                        sprintf(scoreBuffer, "%d", score);

                        bullets[i].active = 0;
                }
            }
            //deactivates bullet when offscreen
            if (bullets[i].x + bullets[i].width >= 239) {
                bullets[i].active = 0;
            }
        }
    }
}

//activates bullet and other properties when player shoots
void fireBullet() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (!bullets[i].active) {
            bullets[i].active = 1;
            bullets[i].x = player.x + 14;
            bullets[i].y = (player.y / 8)+ 15;
            playAnalogSound(7);
            break;
        }
    }
}