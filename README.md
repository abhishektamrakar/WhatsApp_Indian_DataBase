## WhatsApp Indian Database SQL Analysis Project

This GitHub repository contains a collection of complex SQL queries designed to analyze the WhatsApp Indian Database. The dataset consists of information related to users' personal details, communication patterns, and purchasing behaviors. The goal of this project is to demonstrate how SQL can be utilized for in-depth data analysis, extraction, and reporting.

### Dataset Schema

The dataset comprises the following columns:

- First_Name (nvarchar(50))
- Last_Name (nvarchar(50))
- Mobile (bigint)
- Email (nvarchar(50))
- Current_Tier (nvarchar(50))
- LTD (date)
- Recency (smallint)
- Recency_Band (nvarchar(50))
- IS_Valid_Mobile_Flag (tinyint)
- IS_Target_Flag (tinyint)
- LTD_Store_Code (nvarchar(50))
- LTD_Store_Name (nvarchar(50))
- LTD_Region (nvarchar(50))
- LTD_Franchise (nvarchar(50))
- LTD_City (nvarchar(50))
- LTD_State (nvarchar(50))

### Query Examples

Here are a few examples of the types of complex SQL queries that can be found in this repository:

1. **Customer Segmentation:** Identify customer segments based on recency, frequency, and monetary value.
2. **Top Performing Stores:** Find the top-performing stores in terms of lifetime total demand (LTD).
3. **Churn Analysis:** Analyze user recency and recency bands to predict potential churn.
4. **Geographical Insights:** Explore the distribution of users across regions, franchises, cities, and states.
5. **Targeted Marketing:** Identify users with the highest potential for targeted marketing based on flags and attributes.

Please note that due to the complexity and volume of queries, they may vary in performance depending on your specific database setup. It's recommended to optimize and index tables as needed for optimal performance.

### How to Use

Each query in this repository is numbered and accompanied by a descriptive comment explaining its purpose. You can execute these queries in your SQL database management system. Remember to replace placeholders such as table names and column names with your actual database schema.

### Contribution

Contributions to this project are welcome! If you've developed interesting and insightful SQL queries, feel free to create a pull request. For major changes, please open an issue to discuss the proposed query before implementation.

### License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to adapt and expand upon this readme description for your GitHub project. As for the queries themselves, you can start by defining the business questions you want to answer and then develop queries to address those questions. If you encounter specific challenges or need assistance with particular queries, don't hesitate to ask for help!
