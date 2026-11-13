Commands to compile CAETÊ, run it and process outputs
=====================================================

Compiling CAETÊ
---------------

CAETÊ Fortran code must be compiled before you run the model. This compilation is executed using `f2py` module to create a library that can be imported and used inside Python scripts.

The ``Makefile`` inside CAETÊ ``/src`` folder is automated to compile all CAETÊ Fortran codes.

When compiling CAETÊ, you have 3 options for commands:

    - ``make so`` - This command compiles Fortran source and creates a file named with something like `caete_module.so`, the wrapped Fortran functions and subroutines for python.

    - ``make clean_plsgen`` - This command removes the cache files containing allocation combinations for PLS creation in plsgen.py. Run this will make the first run of CAETÊ in your computer slower but will make sure that your input data is ok!

    - ``make clean`` - This command clears your python cache and deletes some compiled files. **Run this command always when you want to clean the cached PLS table or when you modified `plsgen.py` file** 


Below you can check an example of compiling CAETÊ:

.. code-block:: bash

    # Enter CAETÊ src folder
    CAETE/$  cd src

    # Clean all cache files (Cache PLS table, Python cache, etc)
    CAETE/src$  make clean

    # Build caete_module.so
    CAETE/src$  make so

If the compilation fails, you will see the error message. Otherwise, after this process, you will see that a file named ``caete-module...so`` was created inside ``src`` folder.

Running CAETÊ
-------------

To run CAETÊ model, just execute the following script inside ``src`` folder:

.. code-block:: bash

    # Enter CAETÊ src folder
    CAETE/$  cd src

    # Run CAETÊ
    CAETE/src$  python model_driver.py

    # At this point the model will ask you some questions.

