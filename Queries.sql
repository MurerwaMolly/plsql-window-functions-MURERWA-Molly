sql
## Top 5 products per branch and quarter
SELECT branch,
       p.name AS product_name,
       SUM(t.amount) AS total_sales,
       RANK() OVER (PARTITION BY branch, TO_CHAR(sale_date,'Q')
                    ORDER BY SUM(t.amount) DESC) AS product_rank
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
JOIN products p ON t.product_id = p.product_id
GROUP BY branch, TO_CHAR(sale_date,'Q'), p.name;

## Running monthly sales totals
SELECT TO_CHAR(sale_date, 'YYYY-MM') AS month,
       SUM(amount) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')
                         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM transactions;

## Month-over-month growth %
SELECT month,
       total_sales,
       LAG(total_sales) OVER (ORDER BY month) AS prev_sales,
       ROUND(((total_sales - LAG(total_sales) OVER (ORDER BY month)) 
             / LAG(total_sales) OVER (ORDER BY month)) * 100, 2) AS growth_pct
FROM (
     SELECT TO_CHAR(sale_date, 'YYYY-MM') AS month,
            SUM(amount) AS total_sales
     FROM transactions
     GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
);

## Customer quartiles by spending
SELECT customer_id,
       SUM(amount) AS total_spent,
       NTILE(4) OVER (ORDER BY SUM(amount) DESC) AS spending_quartile
FROM transactions
GROUP BY customer_id;
