#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))

data(Titanic) #This function pulls the dataset from Base R

titan_df <- as.data.frame(Titanic) #We will name the dataframe titan_df


#See the top rows of the data
#TASK: Write the function to see the top rows of the data

head(titan_df) #This function prints the first few rows of titan_df dataframe

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr

install.packages("dplyr") #This function downloads and installs the dplyr package

library(dplyr) #This function calls the dplyr library

#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)

titan_df2 <- select(titan_df, Survived, Sex) #selects the columns in question and creates new dataframe called titan_df2

head(titan_df2)

#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name

#titan_df2 <- select(titan_df, Survived, Sex) #selects the columns in question and creates new dataframe called titan_df2

print(titan_df2)

#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)

titan_df2 <- select(titan_df2, -Sex)

head(titan_df2)

#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'

#rename(titan_df, Gender = Sex)


#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column

titan_df3 <- rename(titan_df, Gender = Sex)

#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'

titan_male <- filter(titan_df3, Gender == "Male")
head(titan_male)

#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())

titan_arranged <- arrange(titan_df, Gender)
head(titan_arranged)

#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:_2201___

freq_sum <- sum(titan_df$Freq)
freq_sum


#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'

titan_female <- filter(titan_df, Gender == "Female")
head(titan_female)


#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')

mfjoined_df <- bind_rows(titan_male, titan_female)

head(mfjoined_df)

#Optional Task: add any of the other functions 
#you learned about from the dplyr package

