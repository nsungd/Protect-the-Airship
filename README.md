# HW04: Protect the Airship
### Download my_project.gba to play (needs mGBA emulator)
## Controls
Start:
(On start screen) - starts game
(On pause screen) - unpauses game
(On scoreboard or lose screen) - back to start screen

Select - goes to scoreboard, pressing again takes to previous screen

Left - move left
Right - move right
Up - jump
A - shoot

## How to Play
You are part of a crew of pirates on an airship.
Out of nowhere, a rival crew sends explosive balloons to bring down your ship.
The captain has sent you to shoot them down. Destroy as many as you can before your ship's health reaches 0.

## Navigating State Machine
Both start and select take you through different states, as mentioned above. Will go to lose state
automatically once the ship is destroyed.

## Additional Mechanics
Switching object images - Balloons switch to an explosion image when making contact with other objects. 
Implementation in drawBalloons, updateBalloons, and balloon struct in game.c. Sources for images in sources.txt.

Animation - Lose screen has a 3 frame crying animation, implementation in updateCryingAnim and cryingAnim in game.c.

Score counter and high score - Score counter can be seen in game state, and high score can be seen on the scoreboard. Implementation in game.c

## Potential Bugs
- Sometimes balloons clip into each other
- Colors may be wrong while switching states
