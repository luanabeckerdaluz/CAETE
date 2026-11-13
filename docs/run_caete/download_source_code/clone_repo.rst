Clone source code using git and VSCode
======================================

**1) Install Git**

Before install, check if git is already installed. To do this, please open a terminal and type the command ``git``.

In case you need to install git, please follow the instructions on https://git-scm.com/install/

To check if git was correclty installed, test in your terminal if the command ``git`` works.

----

**2) Install VSCode**

To install VSCode, please download it and install using the following link: https://code.visualstudio.com/download

----

**3) Clone CAETÊ source code and select a specific branch (Terminal or VSCode)**

    **3.1) Using terminal**

        .. code-block:: bash
        
            # Go to folder where you want to clone repo
            cd __folder__

            # Clone CAETÊ source code
            git clone https://github.com/LabTerra/CAETE/
            
            # Enter CAETÊ folder
            cd CAETE

            # List all branches
            git branch -a

            # Checkout specific branch
            git checkout _branch_name_

    **3.2) Using VSCode**

        In the Welcome page, select the option ``Clone Git Repository``:

        .. figure:: ../../img/vscode_clone_repo_1.png
            :align: center
            :width: 60%
            :figclass: align-center

            **Select the VSCode option to clone a GitHub repository.**

        Insert GitHub URL ``https://github.com/LabTerra/CAETE``
        
        .. figure:: ../../img/vscode_clone_repo_2.png
            :align: center
            :width: 60%
            :figclass: align-center

            **Insert CAETÊ repository URL and clone.**

        Then select the option **Open in New Window**. VSCode will load this cloned repository in the new window. 

        .. figure:: ../../img/vscode_clone_repo_3.png
            :align: center
            :width: 60%
            :figclass: align-center

            **Open the repository in a new VSCode window.**

        After the repository was opened, you can select the VSCode source control feature (3º option from side menu) and then click on the current branch name (in this example, it is ``main``). It will list all the branches. To select a branch, just click in one of them.

        .. figure:: ../../img/vscode_clone_repo_4.png
            :align: center
            :width: 60%
            :figclass: align-center

            **Selecting a specific branch.**
