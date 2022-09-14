To run the file, run the command "python dataprocessing.py"

To run a cron job, here are the steps:
1. execute pwd and which python3 to get absolute paths to python scripts and current script folder.
2. run crontab -e command
3. After opening VIM editor, click the "i" key on keyboard and specify the scheduling pattern, path to the python executable and script folder obtained in step 1.
In our case:
0 1 * * * /usr/local/bin/python3 Users/Bryan/OneDrive/Desktop/DSAID Assessment/Task1/dataprocessing.py
4. Press ESC key to escape insert mode, followed by :wq and ENTER keys.
5. To verify that the file is saved, run crontab -l to see all scheduled jobs.
