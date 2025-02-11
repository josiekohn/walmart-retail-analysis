-- Qual o total de vendas no dataset?
SELECT
    SUM(purchase) AS total_sales
FROM
    walmart_sales;

-- Qual o ticket médio de compras?
SELECT
    AVG(purchase) AS avg_ticket
FROM
    walmart_sales;

-- Faturamento total por cidade
SELECT
    city_category,
    SUM(purchase) AS total_revenue
FROM
    walmart_sales
GROUP BY
    city_category
ORDER BY
    total_revenue DESC;

-- Qual faixa etária gasta mais?
SELECT
    age,
    SUM(purchase) AS total_spent
FROM
    walmart_sales
GROUP BY
    age
ORDER BY
    total_spent DESC;

-- Categorias de produtos mais vendidas
SELECT
    product_category,
    COUNT(*) AS num_sales,
    SUM(purchase) AS revenue
FROM
    walmart_sales
GROUP BY
    product_category
ORDER BY
    revenue DESC
LIMIT
    5;

-- Comparação entre clientes casados e solteiros
SELECT
    CASE
        WHEN marital_status = 0 THEN 'Solteiro'
        WHEN marital_status = 1 THEN 'Casado'
    END AS status_civil,
    AVG(purchase) AS avg_purchase
FROM
    walmart_sales
GROUP BY
    marital_status;
