# WAAFLE PBS scripts tutorial
The scripts hereby provided work togheter but they are not sequential, so you will have to issue them one at a time. This was made so to leave the possibility of check the output of each command. 

### Version 1
The scripts work when the directory holding the files is in the form directory-files
- `config.sh`: stores all the paths
- `get_list.sh`: this script takes as input a text file storing the path to the contigs. It outputs a list of all the contigs file that will then be used in the analysis
- `manager.sh`: this script goes trough the list created by the previous command and calls the full waafle pipeline on the sample
- `waafle_run.sh`: this script calls all the waafle commands and performs a full analysis
- `check_recover.sh`: this script checks if some samples were not analyzed

### Version 1
The scripts work when the directory holding the files is in the form directory-directory-files
- `config.sh`: stores all the paths
- `get_list_r.sh`: this script takes as input a text file storing the path to the contigs. It outputs a list of all the contigs file that will then be used in the analysis
- `manager_r.sh`: this script goes trough the list created by the previous command and calls the full waafle pipeline on the sample
- `waafle_run_r.sh`: this script calls all the waafle commands and performs a full analysis
- `check_recover.sh`: this script checks if some samples were not analyzed
