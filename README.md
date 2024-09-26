# Modelling (ERD) and DBT Assignment

This assignment is part of the requirement to fulfill the participation in the **CDE BootCamp Cohort 1**

## MODELLING SECTION

### Task: Design a simple ERD for Fufu Republic

#### Overview
Fufu Republic is a popular restaurant chain in Nigeria with multiple outlets nationwide. While the core menu is standardized, some items vary by location 
(e.g., the Agege branch may sell Chinese Rice, while the Lekki branch might not). Customers can order online through the website or visit outlets for dine-in
 or take-out.
 
Payment Methods accepted includes 
- Cash
- Debit card payments via Nomba POS terminals at outlets
- Online payments processed through gateways like Nomba Web Checkout, Paystack, Interswitch etc.


#### Methodology

This involves understanding the business requirements and creating the necessary tables, then linking them via Entity-Relationship Diagram as seen below...

![Fufu Republic ERD](./fufurepublicERD.png)

The following tables have been created, `order`, `payment`, `package`, `item`, `customer`, `branch`, `staff`, `date`, `dining_type`, `order_status`, `status`,
`city` and `state`,  with the required columns within as seen above to capture the necessary data and show business insights.


#### Business Questions 

1. What is the quantity ordered at each branch?

2. What dining type is popular across the various branches?

3. What is the total revenue by branches?

4. What item is most ordered at various branches?

5. Which staff has the highest number of completed orders?
	
**N.B:** The `case_study_pdf` for this project is provided within.

## DBT SECTION

#### Overview
Fufu republic data is extracted and loaded into a `snowflake` data warehouse leveraging `DBT` as a transformation tool to carry out the necessary transformation
in the warehouse that drives the business logic.

#### Methodology
- The data used in this project was generated using the `python FAKER library`. The jupyter notebook, `generate_csv.ipynb` shows all the codes, processes and 
steps used to generate the needed data to help achieve this task.

- The generated data is stored in a csv folder and the individual csv's are loaded as `seed` into `dbt`. These seeds forms the basis for our source data in each
 of the tables in the data warehouse.
 
- The dbt project, `cde_dbt` has a model's folder with 3 sub-folders, viz; `raw` folder for the raw source data, `staging` folder for the `dimensions` which
 have been lightly transformed and `processed` folder for the `facts` that drives the business logic for Fufu Republic.
 
- Fufu republic data is been store in a `snowflake DW` within the `CDE` database that has three schemas, `BRONZE`, `SILVER` and `GOLD`; which reads to `RAW`,
 `STAGING` and `PROCESSED` respectively in the `dbt models` folder. 
 
- Generic and custom tests have also been applied to some of the models to ensure data quality and integrity across them. Data freshness check is apllied to 
the `orders` table in the `bronze` schema, to ensure that data is not stale. Also, documentation was done on the `cde_dbt` project folder to aid better
 comprehension and understanding by other potential users.

- Finally, a user role `JOSEPH` was created on snowflake DW and `SELECT` access was granted to it on each of the models, immediately after a `dbt run` is completed.

**N.B:** `dbt core` was used to achieve the transformations within.