-- Criando uma tabela auxiliar com dados de ocupações
CREATE TABLE occupation_data (
    occupation_id INT PRIMARY KEY,
    occupation_name VARCHAR(100)
);

INSERT INTO occupation_data VALUES 
    (0, 'Outro'),
    (1, 'TI'),
    (2, 'Engenharia'),
    (3, 'Saúde'),
    (4, 'Educação'),
    (10, 'Autônomo'),
    (16, 'Empresário');

-- Relacionar as compras com as ocupações
SELECT o.occupation_name, COUNT(s.user_id) AS num_customers, SUM(s.purchase) AS total_spent
FROM walmart_sales s
JOIN occupation_data o ON s.occupation = o.occupation_id
GROUP BY o.occupation_name
ORDER BY total_spent DESC;
s
