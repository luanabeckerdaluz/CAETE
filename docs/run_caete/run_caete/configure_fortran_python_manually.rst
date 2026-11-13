Install all development tools locally and run CAETÊ
===================================================

Requirements for Windows
------------------------

.. warning::
    **Windows is not supported for this configuration!**

    If you want to run CAETÊ on Windows, please follow the :doc:`docker` instructions!

----

Requirements for Linux / MacOS
------------------------------

CAETÊ depends on a few packages that must be installed beforehand.
You can install them using your favorite package manager (e.g. ``apt``).

- **make**: This is an automation utility used in software development.
- **gfortran**: The Fortran compiler is usually pre-installed on your system or easily available.
- **Python, pip and pyenv**: In case you don't have Python and pip already installed in your system, please install it directly on your system or using a Conda environment.

Make sure you have them properly installed before running the code.

----

Configuring Python environment
------------------------------

.. danger::
    **Avoid installing CAETÊ packages directly into your system Python!**
    The system Python is used by core utilities and package managers. Installing CAETÊ-specific
    Python packages directly into it may break your system.

.. warning::
    The Python installation must be reachable from the terminal/shell where you will run the Makefile to build the Fortran/Python extension module. This means that the Python executable must be in the ``PATH`` environment variable or can be launched via an environment manager like ``pyenv``, ``uv``, ``PIM``, etc. 

- **Decide where to create your environment:**
    In this example, we will create our env inside folder ``~/py_envs/sphinx``.
- **Creating a Python environment:**
    ``python -m venv ~/py_envs/sphinx``
- **Activating environment:**
    ``source ~/py_envs/sphinx/bin/activate``
- **Deactivating environment:**
    ``deactivate``

----

Test f2py
---------

Follow `NumPy f2py "quick way" <https://numpy.org/doc/stable/f2py/f2py.getting-started.html#>`_.

**If successful, CAETE compilation likely to work!**

----

Compile CAETÊ and run
---------------------

All the commands to build and run CAETÊ are available in the section :doc:`caete_command_line`. 
