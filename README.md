
# CAETÊ

This is the implementation of the Dynamic Vegetation Model CAETÊ (CArbon and Ecosystem Trait-based Evaluation model) - including Nitrogen and Phosphorus cycling.

## Building docs

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
