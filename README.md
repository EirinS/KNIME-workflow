# KNIME-workflow

## Requirements

- [The Arctic Package v2](https://github.com/EirinS/Arctic.Ocean-v2)
- [The acoustic models](https://github.com/EirinS/AcousticModels)
- Data files required to run the models.
- KNIME workflow management system with extensions KNIME External Tool Support and KNIME Matlab Scripting extension
- Docker
- MATLAB to run the code from the Arctic Package. The code was tested with MATLAB r2020a.

## How to set up

1. Install the required software
2. Open KNIME and import KNIME workflow. Locate the .knar file of the workflow and import it to KNIME. When opening the workflow, you are prompted to install missing extensions (Matlab Plot and Matlab Snippet). Press "yes". You need the extensions to run the workflow.
3. Create a folder in the workflow group called `ArcticOceanFiles`. This is the folder where KNIME will look for the files that the workflow needs to run. If you want to place the files at another location, you need to reconfigure the `Configure workflow folder paths` node.
4. Clone the Arctic Package v2 repository into the ArcticOceanFiles folder. If you select another location, you will need to reconfigure the workflow nodes in order for the files to be detected. This can be done by right clicking on the `Configure workflow folder paths` node and clicking "configure". Now set the locations to the folder of the ArcticOcean matlab files.
5. Clone the Acoustic Models repository into the `ArcticOceanFiles` folder. If you select another location, you will need to reconfigure the workflow nodes in order for the files to be detected. This can be done by right clicking on the `Configure workflow folder paths` node and clicking "configure". Now set the location of the acoustic models to be your location. Create a folder `data` at each model folder location, for example `ArcticOceanFiles\AcousticModels\Bellhop\data`. The input and output files for the model run are placed here.
6. Add a folder `dataBase` within the folder `ArcticOceanFiles` containing the database files. You can select another location of the database files by reconfiguring the `Configure workflow folder paths` node.
7. Add a folder `priorRuns` within the folder `ArcticOceanFiles` containing the source and receiver files. You can select another location of the database files by reconfiguring the `Configure workflow folder paths` node.

You should now be ready to run the workflow.

## Run from KNIME

1. Open the ArcticOcean workflow file. You will be prompted to check for updates, in components. Unless you have changed any of the components, you can press no.
2. Set the input parameters necessary for running the workflow. Click on the "Take workflow input" node, and press shift + F10 (or press execute selected node and open first view). A user interface will appear, and you can specify the desired parameters.
3. Specify the parameters for the model(s) you want to run by repeating step 4. for the "Take MODEL_NAME input" node.
4. Run the workflow. Shift + F7 will run all the models (or press the "Run all executable nodes button"). Running just one model can be done by clicking on the last node of the model you want to run, and press F7 (or the execute selected node button).

Repeat step 3-4. to run the model with different parameters.
