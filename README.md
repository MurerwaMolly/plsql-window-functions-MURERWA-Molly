STEP1: PROBLEM DEFINITION
Business Context
A coffee chain operating in Rwanda, selling beverages, pastries, and packaged coffee beans across multiple branches. The sales department wants to understand customer purchase behavior, product popularity, and revenue growth trends.

Data Challenge
The company collects thousands of sales transactions daily, but the team struggles to identify top-selling products by branch, track customer loyalty, and measure seasonal growth. Without structured analysis, promotions and inventory management remain guesswork.

Expected Outcome
Determine the top products per branch/quarter, monitor running revenue totals, analyze month-over-month growth, segment customers into quartiles, and calculate 3-month moving averages to guide targeted promotions and restocking decisions.

STEP 2: SUCCESS CRITERIA
Top 5 products per branch/quarter using RANK()
Running monthly sales totals using SUM() OVER()
Month-over-month growth analysis using LAG() / LEAD()
Customer quartile segmentation using NTILE(4)
3-month moving average of sales using AVG() OVER()

STEP6: RESULT ANALYSIS
1. Descriptive (What happened?)

Top products: Cappuccino and Coffee Beans consistently rank as the highest-selling products across branches.
Sales trends: Monthly sales show steady growth from January to March, with a notable spike in February due to higher packaged coffee sales.
Customer segmentation: A small group of high-spending customers falls into the top quartile, while most casual buyers are in the bottom quartiles.
Moving averages: The 3-month moving average reveals consistent upward momentum in revenue, smoothing seasonal fluctuations.

2. Diagnostic (Why did it happen?)
Product performance: Beverages perform better due to daily consumption, while pastries and packaged products have periodic spikes (holidays, promotions).
Branch differences: The Kigali-CBD branch shows higher revenue, likely due to foot traffic from office workers and tourists.
Customer behavior: Loyal customers who repeatedly buy beverages (coffee) drive the majority of revenue, while pastry buyers contribute less but more frequently.
Growth patterns: February’s spike in packaged coffee indicates a promotion or gift-buying period (Valentine’s Day).

3. Prescriptive (What next?)
Inventory planning: Increase stock of Cappuccino and Coffee Beans at high-demand branches, especially during seasonal peaks.
Customer targeting: Launch loyalty rewards for top-quartile customers and targeted discounts for mid-tier customers to push them upward.

STEP 7: REFERENCES
Oracle. Window Functions (Analytic Functions) Documentation. https://docs.oracle.com
PostgreSQL Global Development Group. Window Functions. https://www.postgresql.org/docs/
Microsoft. T-SQL Window Functions. https://learn.microsoft.com
TutorialsPoint. SQL – Window Functions. https://www.tutorialspoint.com
Mode Analytics. Guide to SQL Window Functions. https://mode.com/sql-tutorial/
GeeksforGeeks. Introduction to SQL Window Functions. https://www.geeksforgeeks.org
DataCamp. Mastering Window Functions in SQL. https://www.datacamp.com
Ramez Elmasri & Shamkant Navathe. Fundamentals of Database Systems (7th Edition). Pearson.
Kimball, Ralph. The Data Warehouse Toolkit. Wiley.
Harvard Business Review. Using Analytics to Improve Business Decisions. https://hbr.org

"All sources were properly cited. Implementations and analysis represent original work. No AI generated content was copied without attributin or adaptation."
