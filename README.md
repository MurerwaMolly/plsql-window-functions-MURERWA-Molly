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
