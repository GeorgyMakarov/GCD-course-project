# GCD course project
## JHU Getting and Cleaning Data course project
 
 This repo contains 4 files:  
 - README.md gives general overview of the project;  
 - CodeBook.md describes the variables, the data, the transformations from raw to tidy dataset;  
 - run_analysis.R contains source code for the transformations;  
 - tidy_dataset.txt contains tidy data.
 
Script run_analysis.R performs the following actions:  
1. Download the data from the Web and creates directory if it does not exist;  
2. Read the data for measurements *x*, activities *y* and subjects *sub* for train and test datasets;  
3. Merge train and test datasets;  
4. Select columns, which contain mean *mean* and standard deviation *std*;  
5. Replace *-mean* with *Mean* and *-std* with *Std* in column names;  
6. Remove excessive symbols from column names;  
7. Extract measurement data *x* by selected columns;  
8. Merge subject, activities and measurements in one dataset;  
9. Replace activities id with activities names;  
10. Transform activity names to factors;  
11. Generate tidy dataset, which consists of the mean of each variable for each subject and each activity;  
12. Write *.txt* file with new dataset in project directory.