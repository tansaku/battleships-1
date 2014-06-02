1. Player

Responsibilities:
- Should have 5 ships
- Should place 5 ships on home grid. 
- Should call out shots on tracking grid.
<!-- - Can sink opponent's ships -->
 
Collaborators:

- Ship
- HomeGrid
- TrackingGrid

2. Grid

Responsibilities: 

- Stores ships in specific locations
- Declare hits and misses for all locations
- Can hide ships

2.a. TrackingGrid < Grid

Responsibilities:

- Hides opponent's ship location


2.b. HomeGrid < Grid

Responsibilities:

- Know user's ship location

Collaborators:

- ship
- player


4. Ship

Responsibilities: 

- Occupy location on grid.
- Have certain lengths
- Hit?
- Sunk?

Collaborators:

- grid
- player


 
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



