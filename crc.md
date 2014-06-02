1. Player

Responsibilities:
- Should have 10 ships
- Should place 10 ships on home grid. 
- Should call out shots on tracking grid.
 
Collaborators:

- Ship
- HomeGrid
- TrackingGrid

2. Grid

Responsibilities: 

- Contain cells
- Stores ships
- Declare hits, misses or sinks

<!-- Collaborators:

-  -->

2.a. TrackingGrid < Grid

Responsibilities:

- Does not declare opponent's ship location when initialised
- Updates user's hits
- Updates user's misses
- Updates user's sinks


Collaborators : none (?)

2.b. HomeGrid < Grid

Responsibilities:

- Declares user's ship location
- Updates opponent's hits
- Updates opponent's misses
- Updates opponent's sinks

Collaborators:

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



