# KNIME-workflow

## Requirements

- The Arctic Package v2
- The acoustic models
- Data files required to run the models
- KNIME workflow management system with extensions KNIME External Tool Support and KNIME Matlab Scripting extension
- Docker
- Matlab

## How to set up

1. Create a folder and clone the repositories containing the workflow files, the matlab code of the arctic package and the acoustic models into that folder. Keep the repositories on the same level to minimize custom configurations within the workflow.
2. Install the required software
3. Open KNIME and import KNIME workflow. Locate the .knwf file of the workflow and import it to KNIME.
4. When opening the workflow, you are prompted to install missing extensions (Matlab Plot, Matlab Snippet, External Tool). Press "yes" or the workflow can not run.

### When running from KNIME

1. Set up the workflow variables. The workflow variables specify the path to the workflow configuration files.
2. Copy the database directory into the KNIME-workflow folder.
3. Modify the configuration files to you need. They are on the form:
   `settingname, setting`. Replace the "setting" with your preferred setting. The `workflow_configurations` file contains specifies where to find the arctic package (matlablib) and where to find the database files. Modify this file to reflect the location of your files.
4. You might need to configure the external tool within the RAM component to run the script to launch docker and run the model within docker.
