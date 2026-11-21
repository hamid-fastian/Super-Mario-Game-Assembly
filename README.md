# Super Mario Game – 8086 Assembly

A Super Mario-inspired game developed in 8086 Assembly Language using NASM for the COAL Fall 2026 semester project at FAST-NUCES.

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

### Technologies

- 8086 Assembly Language
- NASM Assembler
- DOSBox

## Project Status

Module 3 – Level Map: Implemented.

Other
