#CODEBOOK
  Codebooks explains the content of tidy.txt and the cleaning steps taken in run_analysis.R

0-Preperations 
  If not already available in WD files are downloaded and extracted
  Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  x_train, y_train, x_test, y_test, subject_train and subject_test are the most relevant files 
  but there are also files in the archive explaining activities(activity_labels.txt) and features (features.txt).

1/2-Training data and testdata are merged and mean and standard deviation measurements are extracted
  This results in 3 merged datasets x,y,subject 
  Columnnames are made more self explaining 

3-Activity Id's are replaced by activity description

4-Datasets get descriptive labels and are combined in a single dataset 
  This results in dateset named "complete"

5-Averages calculated for each variable and exported as a textfile
  End result is tidy.txt with two identifier columns and 66 measurements

subject-ID of the subject          
activity-Activity description	
TimeBodyAccMeanX        
TimeBodyAccMeanY         
TimeBodyAccMeanZ         
TimeBodyAccStdX         
TimeBodyAccStdY          
TimeBodyAccStdZ          
TimeGravityAccMeanX     
TimeGravityAccMeanY      
TimeGravityAccMeanZ      
TimeGravityAccStdX      
TimeGravityAccStdY       
TimeGravityAccStdZ       
TimeBodyAccJerkMeanX    
TimeBodyAccJerkMeanY     
TimeBodyAccJerkMeanZ     
TimeBodyAccJerkStdX     
TimeBodyAccJerkStdY      
TimeBodyAccJerkStdZ      
TimeBodyGyroMeanX       
TimeBodyGyroMeanY        
TimeBodyGyroMeanZ        
TimeBodyGyroStdX        
TimeBodyGyroStdY         
TimeBodyGyroStdZ         
TimeBodyGyroJerkMeanX   
TimeBodyGyroJerkMeanY    
TimeBodyGyroJerkMeanZ    
TimeBodyGyroJerkStdX    
TimeBodyGyroJerkStdY     
TimeBodyGyroJerkStdZ     
TimeBodyAccMagMean      
TimeBodyAccMagStd        
TimeGravityAccMagMean    
TimeGravityAccMagStd    
TimeBodyAccJerkMagMean   
TimeBodyAccJerkMagStd    
TimeBodyGyroMagMean     
TimeBodyGyroMagStd       
TimeBodyGyroJerkMagMean  
TimeBodyGyroJerkMagStd  
FreqBodyAccMeanX         
FreqBodyAccMeanY         
FreqBodyAccMeanZ        
FreqBodyAccStdX          
FreqBodyAccStdY          
FreqBodyAccStdZ         
FreqBodyAccMeanFreqX     
FreqBodyAccMeanFreqY     
FreqBodyAccMeanFreqZ    
FreqBodyAccJerkMeanX     
FreqBodyAccJerkMeanY     
FreqBodyAccJerkMeanZ    
FreqBodyAccJerkStdX      
FreqBodyAccJerkStdY      
FreqBodyAccJerkStdZ     
FreqBodyAccJerkMeanFreqX 
FreqBodyAccJerkMeanFreqY 
FreqBodyAccJerkMeanFreqZ
FreqBodyGyroMeanX        
FreqBodyGyroMeanY        
FreqBodyGyroMeanZ       
FreqBodyGyroStdX         
FreqBodyGyroStdY         
FreqBodyGyroStdZ        
FreqBodyGyroMeanFreqX    
FreqBodyGyroMeanFreqY   
