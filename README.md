# Super Mario Game – 8086 Assembly

A Super Mario-inspired game developed in 8086 Assembly Language using NASM for the COAL Fall 2026 semester project at FAST-NUCES.

---

## Module 3: Level Map

This module implements the level map system for the game. It stores the game environment in a two-dimensional logical map using a one-dimensional byte array.

### Features

- **Map Dimensions:** 60 columns × 12 rows.
- **Tile-Based Map:** Each tile is represented by one byte.
- **Ground Initialization:** Fills the last row with ground tiles.
- **Brick Platforms:** Places brick blocks at predefined positions.
- **Question Blocks:** Adds question blocks to the level.
- **Pipes:** Creates a pipe structure using pipe tiles.
- **GetTile:** Retrieves a tile ID using its row and column.
- **SetTile:** Updates a tile at a specified position.
- **Boundary Checking:** Prevents access to invalid map coordinates.

### Tile IDs

| Tile | ID |
|---|---:|
| EMPTY | 0 |
| GROUND | 1 |
| BRICK | 2 |
| QUESTION | 3 |
| PIPE | 4 |

### Map Index Calculation

The map is stored in row-major order.

`Index = (Row × MAP_W) + Column`

Each tile occupies one byte.

### Procedures

| Procedure | Description |
|---|---|
| `InitMap` | Initializes the level and places tiles. |
| `GetTile` | Returns the tile ID at a given position in AL. |
| `SetTile` | Changes the tile at a given position. |

---

## Module 6: Camera System

This module implements the horizontal camera system, allowing the game view to follow Mario as he moves through the level.

### Features

- **World Width:** 960 pixels.
- **Screen Width:** 320 pixels.
- **Maximum Camera Position:** 640 pixels.
- **Camera Initialization:** Starts the camera at position zero.
- **Mario Tracking:** Updates the camera position according to Mario's world X coordinate.
- **Screen Center Tracking:** Keeps Mario around the horizontal center of the screen.
- **Boundary Checking:** Prevents the camera from moving beyond the level boundaries.
- **Coordinate Conversion:** Converts world X coordinates into screen X coordinates.

### Camera Calculation

The camera follows Mario using the following calculation:

`cameraX = marioX - 160`

The camera remains at zero when Mario's X coordinate is 160 or less and cannot exceed 640 pixels.

### World-to-Screen Conversion

`ScreenX = WorldX - cameraX`

### Procedures

| Procedure | Description |
|---|---|
| `InitCamera` | Initializes the camera position to zero. |
| `UpdateCamera` | Updates the camera position according to Mario's position. |
| `WorldToScreen` | Converts world coordinates into screen coordinates. |

### Testing

The camera system was tested using different Mario positions to verify camera tracking, boundary limits, and coordinate conversion.

---

## Technologies

- 8086 Assembly Language
- NASM Assembler
- DOSBox
- Assembly File Debugger (AFD)

## Project Status

- **Module 3 – Level Map:** Completed.
- **Module 6 – Camera System:** Completed.
- **Other Modules:** In Progress.

