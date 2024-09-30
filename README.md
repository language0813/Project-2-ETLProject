# Project2

## Create the Category and Subcategory DataFrames

- This part is pretty straightforward. I was able to extract the information needed to generate the `category` and `subcategory` dataframes. The output CSV files are saved in the 'Resources' folder.

## Create the Campaign DataFrame

- To convert the 'launch_date' and 'end_date' columns to datetime format, I first used the 'to_datetime()' method on the original data. Then, to match the 'YYYY-MM-DD' format shown in the starter file, I applied the '.dt.strftime()' method to change the format from datetime to date format.

- The `campaign` dataframe is also saved as a CSV file in the 'Resources' folder.

## Create the Contacts DataFrame

- Option 1 was chosen to use Python dictionary methods to generate the `contacts` dataframe, which was then saved as a CSV file in the 'Resources' folder.

- I also tried Option 2, which is to use regex to create the same dataframe. It was complex for me, so I consulted ChatGPT to help complete this part using regex.

## Create the Crowdfunding Database

- I inspected the four CSV files generated from the previous parts, and the ERD diagram was created based on the relationships between the four tables. The ERD diagram was saved as `Crowdfunding_ERD.png`.

- A file named `crowdfunding_db_schema.sql` was created. This file includes the syntax to create the four tables along with their constraints, such as data types, primary keys, and foreign keys. Additionally, the file also contains SELECT statements to verify table creation and the imported data.

- I right-clicked on 'Databases' in the PostgreSQL to create a new database called `crowdfunding_db`. The SQL syntax was included in the `crowdfunding_db_schema.sql`.

- Each CSV file was successfully imported into the corresponding table in the `crowdfunding_db` databse. Screenshots of each table after the data import were saved in the 'Postgres_screenshots_data_imported' folder for reference.

## Resources

Resources that I referred to for completing this project:

<https://chatgpt.com/>