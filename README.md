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
2. Open KNIME and import KNIME workflow. Locate the .knar file of the workflow and import it to KNIME. When opening the workflow, you are prompted to install missing extensions (Matlab Plot, Matlab Snippet, External Tool). Press "yes". You need the extensions to run the workflow.
3. Clone the Arctic Package v2 repository into the ArcticOceanFiles folder. If you select another location, you might need to reconfigure the workflow nodes in order for the files to be detected.
4. Clone the Acoustic Models repository into the ArcticOceanFiles folder. If you select another location, you might need to reconfigure the workflow nodes in order for the files to be detected.
5. The external tool node will need configuration, as it does not detect user settings. This can be done once and then the settings will be remembered. Go to each of the model components -> external tool and set the input, output and execution directory to paths that exist (it does not matter where, as these settings will be overwritten). Then set the executable to be a program that executes .sh files, for example GitBash.exe.

You should now be ready to run the workflow.

## Run from KNIME

1. Open the ArcticOcean workflow file. You will be prompted to check for updates, in components. Unless you have changed any of the components, you can press no.
2. Set the input parameters necessary for running the workflow. Click on the "Take workflow input" node, and press shift + F10 (or press execute selected node and open first view). A user interface will appear, and you can specify the desired parameters.
3. Specify the parameters for the model(s) you want to run by repeating step 4. for the "Take MODEL_NAME input" node.
4. Run the workflow. Shift + F7 will run all the models (or press the "Run all executable nodes button"). Running just one model can be done by clicking on the last node of the model you want to run, and press F7 (or the execute selected node button).

Repeat step 3-4. to run the model with different parameters.