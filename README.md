## Project Summary
The project aims to develop an end-to-end pipeline for analyzing sales and inventory data, enabling stakeholders to make informed decisions that enhance operational efficiency, profitability, and customer satisfaction. The pipeline will load and transform various sales and inventory datasets into a SQL database, allowing for comprehensive querying to identify trends and patterns, ultimately deriving meaningful insights that drive strategic actions.

![Pipeline Overview](https://github.com/najmisyazani/Sales-and-Inventory-Management-Analysis/blob/main/Overview%20of%20Data%20Pipeline.png)
_Overview of the Data Pipeline_

### Technical Details
- Engineered a robust data pipeline as measured by successfully extracting and processing 9,994 retail order records from a CSV file, transforming the data using Python libraries including pandas and sqlalchemy, and loading it into SQL Server with 100% data integrity.
- Enhanced data quality and analytical potential by deriving 3 new features ('discount', 'sale_price', and 'profit') from existing fields, as measured by the creation of calculated columns using Python, enabling more comprehensive financial analysis.
- Identified top 10 revenue-generating products across 4 regions by implementing complex SQL queries utilizing Common Table Expressions (CTEs) and window functions, resulting in actionable insights for inventory management and regional sales strategies.
- Facilitated year-over-year sales comparison by developing SQL queries to analyze month-over-month growth between 2022 and 2023 across all 12 months, enabling data-driven decision making for seasonal marketing campaigns.
- Uncovered sales patterns by category and time period through advanced SQL queries, as measured by identifying the highest-selling month for each of the 3 main product categories (Furniture, Office Supplies, Technology), informing targeted promotional strategies.

The following are queries that were made to uncover trends and patterns within the data.

![SQL queries](https://github.com/najmisyazani/Sales-and-Inventory-Management-Analysis/blob/main/Snippet%20from%20SQL%20sales%20data.png)


