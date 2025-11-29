#ifndef GAME_H
#define GAME_H

//constants
#define BALLOONCOUNT 10
#define BULLETCOUNT 10

//structs
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

//extern variables
extern PLAYER player;
extern BULLET bullets[BULLETCOUNT];
extern BALLOONS balloons[BALLOONCOUNT];
extern int health;
extern int score;
extern int highScore;
extern char scoreBuffer[41];
extern char highScoreBuffer[41];

//function headers
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

#endif