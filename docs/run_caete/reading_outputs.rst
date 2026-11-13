Reading outputs
===============

We have a module that stores the data of the compressed binary model outputs in netCDF (CF compliant) files. It runs right after the model calculations are ended.
So you have two types of output data:

1 - The results are saved as compressed pickled python dictionaries for each gridcell for each each spinup realized by the `grd.run_caete` method in a numerated file with the extension `.pkz` in the folder `./ouputs/run_name/gridcellYX/spinZ.pkz` where Y and X are the geographic coordinates of the grid cell object, Z is the number of consecutive spinups made by the `grd.run_caete` method and `run_name` is a string asked to be inputed by the user before everthing starts. This is the standard output data when running the model with plot originated data. Time related metadata is saved within each .pkz file.

If you want to check your raw outputs:


.. code-block:: python

    # Import joblib to read pkz file
    import joblib
    
    # Open the file containing the 5th spinup realized
    with open("spin05.pkz", 'rb') as fh:
       dt = joblib.load(fh)
    
    # List available keys for the ouputs
    dt.keys()

    # Plot some variables
    import matplotlib.pyplot as plt
    plt.plot(dt['npp'])
    plt.show()
    plt.plot(dt['area'].T)
    plt.show()
    plt.plot(dt['u_strat'][0,:,:].T, 'x')
    plt.show()


2 - In the same folder were the raw outputs are saved (`./ouputs/run_name/`) you will find the nc_outputs folder,_i.e._, the
folder containing CF compliant netCDF files with daily values for the main output variables. Some high dimensional output data is simplified. So, some valuable information is absent in the netCDF files.
