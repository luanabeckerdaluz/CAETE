

## Linux/MacOS setup

**1) Install compilers:** Check if you have `gcc`, `gfortran` and `make` libraries installed in your system. You can check if they are installed just by invoking each of them in the command line (e.g. `gcc --version`, `gfortran --version`, etc). If necessary to install, you can run `sudo apt install gfortran gcc make` on Linux to install.

**2) Configure python environment:** You need to have Python >= 3.11 + pip installed to run CAETE. You can install it directly in your system, or use virtual environments **(reccommended)**, like `pyenv` or `miniconda`.

Using linux, it is possible to run the model using Python 3.11, 3.12 and 3.13. However, the building system used to compile the fortran/python extension module differs between Python versions. In Python 3.12, the numpy distutils was removed from numpy. See: [Numpy distutils status](https://numpy.org/doc/stable/reference/distutils_status_migration.html#distutils-status-migration). The new (candidate) build method is based on meson. So, if you are using Python >= 3.12, you will need also to install `meson` and `ninja`

Note: At the current time, the new building (meson) system was only working on linux. If you are using windows, you will need to use python 3.11.

**IMPORTANT:** Edit the PYEXEC variable in the [linux Makefile](../src/Makefile) to match the python that you will use to run the model!

In order to install Python dependencies, you can navigate to `src` folder and run the following command:

```bash
make setup
```

This will install all python requirements from [requirements file](../src/requirements_3xx_last.txt).

To run CAETE, follow instructions on section [Running Caete](./running_caete.md)


[⇦ Back](../README.md)