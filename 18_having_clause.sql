SELECT p_name,SUM(total_price) FROM billing_info
    GROUP BY p_name;

SELECT cust_name,SUM(total_price) FROM billing_info
    GROUP BY cust_name
    HAVING SUM(total_price)>5000;
--  you need to use HAVING when you are using GROUP BY
