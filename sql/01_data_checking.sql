-- Verificar as primeiras 10 linhas
SELECT * FROM walmart_sales LIMIT 10;

-- Contar quantas linhas existem na tabela
SELECT COUNT(*) FROM walmart_sales;

-- Checar valores nulos
SELECT 
    COUNT(*) AS total_linhas,
    COUNT(user_id) AS user_id_ok,
    COUNT(product_id) AS product_id_ok,
    COUNT(purchase) AS purchase_ok
FROM walmart_sales;

-- Contar a quantidade de valores distintos por coluna
SELECT 
    COUNT(DISTINCT user_id) AS unique_users,
    COUNT(DISTINCT product_id) AS unique_products,
    COUNT(DISTINCT age) AS unique_ages
FROM walmart_sales;
