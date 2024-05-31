# EDA-of-AppStore-data-using-SQL
Here I have tried to explore and analyse a dataset named 'APPLE_STORE_DATA' which contained 2 datasets 
  - AppleStore.csv (Contains details about the apps, how people have rated them, in how many languages they are available, size and price of the application and so on)
  - appleStore_description.csv (contains the application name and their descriptions)

###### I have attached the datasets to the repository. You can download those directly from there.

###  Tools Used : PostgreSQL

## Analysis and Findings
- First I checked for number of unique IDs in both the datasets. And for both tha cases I got the same number of unique IDs i.e .
  
  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/e3a06b8b-a54b-497d-824b-1b8b150b3752)
  
- Checked for the missing values in both the datasets to be sure imporatnt fields like user rating, track name and prime genre do not contain any null or missing values.
  
  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/5a60f372-71cc-4f54-87dd-1f5d20f617f0)
  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/4eeefd24-9c8a-4096-9625-7d16e9fb75bc)
  
- Found that 'Games', 'Education' and 'Photo & Video' category/genre has huge number of applications available whereas genres like 'catalogs', 'Medical' and 'Education' do not have much number of 
  applications enlisted. Maybe people tend to consume more Games and Photo & Video editing applications rather than educational or medical applications. So, maybe the developers make more number of apps in 
  those genres due to higher popularity.
  
  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/5d88a667-d7cd-4b51-a0d1-c66b1b31809e)

- Minimum rating given to any app is '0' and maximum rating given to any app is 5.0 with a mean of '3.5'

  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/9934bbaa-ecd9-4b64-ab64-48d8d048996c)

- Here we can see the rating distribution for the applications. Most of the apps got a rating of '4' and '4.5', whereas there are 929 people who have not given any rating to the apps. Number of apps which got rating below '3' is quite less.

  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/59a9926b-31ee-456c-9741-7f5492e8d635)

- The average rating the paid apps got higher compared to the apps which are free on app store. Maybe it is due to the perception of the people that paid apps are bettter compared to the free ones. Or maybe it is due to the 'Endowment Effect' for the applications which people have paid for.

  
  The endowment effect describes a circumstance in which an individual places a higher value on an object that they already own than the value they would place on that same object if they did not own it.
  Research has found that "ownership" and "loss aversion" as the two main psychological reasons causing the endowment effect.
  --
  So, people who paid for the apps have percieved higher value for the apps compared to the free ones due to the feeling of 'Loss aversion'.

  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/382f9c2c-3e53-4c42-b04d-769137eab6ce)

- Wanted to find out if the number of langugage in which the apps are available has any effect on the average rating and saw that most of the apps which got higher rating are available in 10-30 languages 
  Apps which are available in more than 30 languages do not have significant impact in the average rating given to them. Maybe developers should focus on limited number of language which have higher impact 
  and relevance rather than focusing on so many languages.

   ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/0d90c042-f23c-4f6c-a0bf-69e35abe4e6e)

- People are not really satisfied with the applications developed under the genres like 'Catalog', 'Finance', 'Book', 'Navigation' and 'Lifestyle'. Developers and Product managers need to find out the 
  product market fit and address the pain points of the User Experience(UX) or maybe the apps developed are so generic that it is not solving the purpose or have better alternatives. User experience is one of 
  the important areas that the developers and product managers should look into.

  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/e4e9acfc-1503-4cbb-b54e-17c36385bdc9)

- Found out that the longer description of the applications on the appstore has a positive correlation on the average user rating. Maybe a long and detailed description helps people to understand the app   
  better and the utility of the app is perceived better. So, applications which will be able to convey their value proposition better will perform better.
  Maybe we can perform A/B testing to set the optimum description length.

  ![image](https://github.com/Subham-here/EDA-of-AppStore-data-using-SQL/assets/170924246/48c57260-9fe6-401b-a1c4-53b0539738ac)











