# Simgen

All files required to make simgen are contained in this directory.
The default driver (and its helpers) is an empty C++ shell and it 
is recommended that customised driver routines are created in separate 
directories elsewhere.

The user manual is in the sub-directory `doc` and the API is specified
as comments in the utility files: `cell.hpp`, `data.hpp`, `geom.hpp`, 
`Mat.hpp`, `Seg.hpp`, `util.hpp`, and `Vec.hpp`.

Most test application directories have informative names and in each
there is usually a tcsh script to run the program otherwise try:
```bash
simgen somefile.run 
```

## Compilation on Mac

This fork has been adapted to work on a modern mac with Xcode installed. Dynamic array allocations have been modified to `vector` objects, and includes of `GL` are conditionally changed to `OpenGL`. Also, the framework has been set up in the `Makefile`.

Additionally, non-essential directories and files have been removed (such as paper folder and linux-compiled object files). 
