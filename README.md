# Pyplot-ADF
A combination of shell and Python scripts to extract and generate absorption plots from ADF TDDFTB calculations.

* a.out and convert.sh scripts will extract the excitations and oscillator strengths from the ADF.out file.
* additionally, generate an abs.csv file (which includes excitation energy in both Hartree and eV units) containing the excitation results sorted by oscillator strength.
* it will then fit the data into a user defined fitting (Gaussian or Lorentzian with specific full-width half maximum value) and generate a data file that includes excitations and their arbitory intencities.
* both of these scripts are previously used in our group and the credit goes to the developer.
* use "chmod +x a.out" and "chmod +x convert.sh" to make the script executable and then only use "./convert.sh" to extract the data. you do not need to execute a.out as it is a part of convert.sh.
* before executing convert.sh, change the path that is initially given in the script for a.out file.
* at the end you need to provide the name of the output. as this script was developed for silver nanowire systems, we used the naming convention of 'Ag_#numberofatoms_#chargeofthesystem_monomer' or 'Ag_#numberofatoms_#chargeofthesystem_Ag_#numberofatoms_#chargeofthesystem_dimer'. this naming convention is important because for the Pyplot, it will be useful to generate the appropriate labels for the plots.

* Pyplot is a combination of shell and Python scripts that will helpful to generate multiple absorption plots in the same graph.
* similar to the previous scripts, you need to use "chmod +x Pyplot" and make the script executable and "./Pyplot" to execute the script.
* the script will request the user to input the number of plots within the same graph.
* therefore collect all the .csv files needs to plot (.csv files were generated from the initial scripts) and execute the script.
* keep in mind that do not include the extension (like .csv)!
* this will work for the specific naming convention for the .csv file and there for when you use it feel free to change accordingly.

* Pyplot will initially request the user about the need of a Python virtual environment.
* this is not needed if the calculations are done in a system where all the Python modules are installed. if not you can use the Python virtual environment.
* following indicates one of the example graphs that generated from this scripts.

![excitation-plot](https://github.com/sulalith99/Pyplot-ADF/assets/148896039/4de10d78-0cbd-4532-bb2c-967e4e0eb1c0)
