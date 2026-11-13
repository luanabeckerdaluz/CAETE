Run using Docker **(recommended)**
==================================

Docker is a technology that allows you to create a ready-to-use local environment in which gfortran, Python, pip and **all the packages required by CAETÊ** are already installed and configured.

This makes it much easier to get started: you no longer need to manually install and configure each dependency on your machine! 

----

Install Docker
--------------

- Mac/Windows: `Docker Desktop <https://docs.docker.com/desktop/>`_
- Linux: `Docker Engine <https://docs.docker.com/engine/install/>`_

Checking if docker was was correclty installed:

    1) Open terminal
    2) Type ``docker``
    3) Type ``docker-compose``
    4) Type ``docker run hello-world``

.. warning::
    In case you installed docker on Linux and you are receiving errors when trying to run without sudo, please follow the entire tutorial above. It includes following `Linux postinstall instructions <https://docs.docker.com/engine/install/linux-postinstall>`_

----

Run CAETÊ using docker
----------------------

**1)** Open a terminal inside CAETÊ repository folder, in the same folder as the ``docker-compose.yml`` file;

**2)** Run CAETÊ using Docker:

    .. note::
        All the ``docker-compose`` commands below already create the environment that CAETÊ needs to run with gfortran, Python, pip and all the required packages. You just need to choose below if you want to run CAETÊ automatically or open the interactive terminal.

    There are 3 ways of running CAETÊ using Docker:

        **1)** ``docker compose run caete-bash``: 
            This command opens an interactive terminal inside CAETÊ source code where you can run commands to compile the model, run it and process outputs.

            This terminal allows you tu run manually commands such as ``make so`` and ``python model_driver.py``. **All these commands to build and run CAETÊ are available in the section** :doc:`caete_command_line`. 
        
        **2)** ``docker compose run caete-run``:
            This command builds and runs CAETÊ directly!

        **3) docker compose run caete-run but forcing arguments**:
            This command also builds and runs CAETÊ directly, but here you can force the CAETÊ input arguments. Follow the commands below depending on your system:
            
            - **Locally (not on Sombrero):**
                - **Linux | Git Bash | WSL**:
                    ``PLS=1000 MASK=a VERSION=3 SOMBRERO=n OUTPUT_NAME=test ZONE=c docker compose run caete-run``
                - **Windows CMD**:
                    ``set PLS=1000&& set MASK=a&& set VERSION=3&& set SOMBRERO=n&& set OUTPUT_NAME=test&& set ZONE=c&& docker compose run caete-run``
                - **Windows Powershell**:
                    ``$env:PLS="1000"; $env:MASK="a"; $env:VERSION="3"; $env:SOMBRERO="n"; $env:OUTPUT_NAME="test"; $env:ZONE="c"; docker compose run caete-run``
            - **Sombrero:**
                - **Linux | Git Bash | WSL**:
                    ``PLS=1000 MASK=a VERSION=3 SOMBRERO=y CLIMATOLOGY=5 docker compose run caete-run``
                - **Windows CMD**:
                    ``set PLS=1000&& set MASK=a&& set VERSION=3&& set SOMBRERO=y&& set CLIMATOLOGY=5&& docker compose run caete-run``
                - **Windows Powershell**:
                    ``$env:PLS="1000"; $env:MASK="a"; $env:VERSION="3"; $env:SOMBRERO="y"; $env:CLIMATOLOGY="5"; docker compose run caete-run``

    In the next figure you can see the difference between ``caete-bash`` and ``caete-run`` commands:

    .. figure:: ../../img/docker-compose-figure.jpg
        :align: center
        :width: 90%
        :figclass: align-center

        **caete-bash and caete-run docker compose commands.**

