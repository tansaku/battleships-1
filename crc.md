1. Player

Responsibilities:
- Should have 10 ships
- Should place 5 ships on home grid. 
- Should call out shots on tracking grid.
- Can sink opponent's ships
 
Collaborators:

- Ship
- HomeGrid
- TrackingGrid

2. Grid

Responsibilities: 

- Contain cells
- Stores ships
- Declare hits, misses or sinks

2.a. TrackingGrid < Grid

Responsibilities:

- Does not declare opponent's ship location when initialised
- Declares h/m/s by user


2.b. HomeGrid < Grid

Responsibilities:

- Declares user's ship location
- Declares h/m/s by opponent


4. Ship

Responsibilities: 

- Occupy cells.
 
5. Game

Responsibilities: 

- When initialized, only has 2 players
- Allows player to place ships on board.
- Allows a player to look at tracking grid
- Allows a player to shoot at opponent's home grid
- Reports victory
- Is finished when one player wins.
- Allows turns. If player hits, gets another go.
- 


Collaborators:



