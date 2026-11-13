
# CAETÊ

This is the implementation of the Dynamic Vegetation Model CAETÊ (CArbon and Ecosystem Trait-based Evaluation model) - including Nitrogen and Phosphorus cycling.

## Docs

This repository contains a **[Github Actions](.github/workflows/deploy-sphinx.yml)** configured to build and deploy automatically the sphinx docs into the `gh-pages` branch. Github repository was configured to deploy Github pages from `gh-pages` branch.

To build docs locally, use the following commands:

```bash
# Create a Python env
python -m venv ~/py_envs/sphinx
# Activate env
source ~/py_envs/sphinx/bin/activate
# Install requirements
pip install -r docs/requirements.txt
# Build
sphinx-build -a -b html docs/ docs/_build

# # # # Build docs
# # # sphinx-apidoc -o docs/modules src/ --force
# # # sphinx-apidoc -o docs/modules src/ --force --module-first --separate
```



## Running and Developing CAETÊ

This section suposses you have a working python environment and an installed fortran compiler. I strongly recommend you to do it in a LINUX/GNU operating system. Most of the fuctionality will not work on MS-windows systems because of the parallel computations realized in python.
If you are a MAC-OS user and need help to set up your environment, check the [development environment section](#development-Environment)

CAETÊ uses both Python and Fortran and uses `f2py` module to create an library of code (functions and subroutines) that can be imported and used in python scripts. This means that the Fortran code must be compiled before you can run the code.

The Makefile inside `/src` folder have useful automation to make it easier.

`clean_plsgen` - remove the cache files containing allocation combinations for PLS creation in plsgen.py. Run this will make the first run of CAETÊ in your computer slower but will make sure that your input data is ok!

`make clean` - it clear your python cache and deletes some compiled files.

`make so` - compile fortran source and creates a file named with something like `caete_module.so`, the wrapped Fortran functions and subroutines for python.

For your use we prepared some sampled input data. You probably do not want to run the model for the entire Amazon outside an HPC environment and we are not able to publicize the input dataset.

To build and run CAETÊ in you PC you can do the following:

```bash
# Go to the source file
CAETE$ cd src

# Clean you cache
CAETE/src$ make clean_plsgen
# After the first clean_plsgen there is almost no need to run in anymore.
# If you change the plsgen.py file, particularly the creation
# of allocation combinations you must to re-run the above command

CAETE/src$ make clean

# Build caete_module.so
CAETE/src$ make so

# Run the model
CAETE/src$ python model_driver.py

# At this point the model will ask you some questions.
```


## __CONTRIBUTORS__

- Anja Rammig
- Bárbara R. Cardeli
- Bianca Rius
- Caio Fascina
- Carlos A. Quesada
- David Lapola
- Felipe Mammoli
- Gabriela M. Sophia
- Gabriel Marandola
- Helena Alves
- Katrin Fleischer
- Phillip PAPAstefanou
- Tatiana Reichert
