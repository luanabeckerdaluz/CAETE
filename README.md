# Documentação CAETE

**Este repositório possui um **[Github Actions](.github/workflows/deploy-sphinx.yml)** configurado para fazer deploy automático da documentação utilizando sphinx.

## Build

```bash
python -m venv ~/sphinx
source activate ~/sphinx
pip install -r docs/requirements.txt
sphinx-apidoc -o docs/modules src/python/ --force
sphinx-apidoc -o docs/modules src/python/ --force --module-first --separate
sphinx-build -b html docs/ docs/_build
```