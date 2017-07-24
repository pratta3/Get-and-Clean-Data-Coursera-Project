# Get-and-Clean-Data-Coursera-Project

## run_analysis.R

run_analysis.R performs the following functions:
1. Merges the test and train datasets
2. Extracts the mean and standard deviation of each measurement
3. Adds descriptive activity names to the dataset
4. Labels the dataset with descriptive variable names
5. Creates a final tidy dataset with the mean of each of the variables of the dataset
   created in step (2), grouped by subject and activity
   
The script works by reading in the relevant datasets into R, assigning readable
names to the variables of the datasets, and finally combining the datasets and
summarizing them. The final output is the dataset produced by step (5) listed above
and is called 'averages'.

I'm certain that the script is not as efficient as it could be, but for now it gets
the job done.
