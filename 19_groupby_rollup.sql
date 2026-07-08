SELECT p_name,SUM(total_price) FROM billing_info
    GROUP BY ROLLUP(P_name)
    ORDER BY SUM(total_price);

SELECT 
    COALESCE(p_name,'total'), -- If the value is null, it will be replaced by what the value we have given in it. 
    SUM(total_price) 
    FROM billing_info
    GROUP BY ROLLUP(P_name)
    ORDER BY SUM(total_price);



