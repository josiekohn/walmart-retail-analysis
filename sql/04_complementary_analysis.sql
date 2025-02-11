-- Top 5 clientes que mais gastaram
WITH ranked_users AS (
    SELECT
        user_id,
        SUM(purchase) AS total_spent
    FROM
        walmart_sales
    GROUP BY
        user_id
    ORDER BY
        total_spent DESC
)
SELECT
    *
FROM
    ranked_users
LIMIT
    5;

-- Categoria de produto favorita por cada faixa etária
SELECT
    age,
    product_category,
    COUNT(*) AS purchases
FROM
    walmart_sales
GROUP BY
    age,
    product_category
ORDER BY
    age,
    purchases DESC;
