INSERT INTO customers (name, email, city, state)
VALUES
    ('João Silva', 'joao@example.com', 'Porto Alegre', 'RS'),
    ('Maria Souza', 'maria@example.com', 'Gravataí', 'RS'),
    ('Carlos Lima', 'carlos@example.com', 'Curitiba', 'PR');

INSERT INTO products (name, category, price)
VALUES
    ('Notebook', 'Eletrônicos', 3500.00),
    ('Mouse', 'Eletrônicos', 150.00),
    ('Cadeira', 'Móveis', 1200.00);

INSERT INTO orders (customer_id, status)
VALUES
    (1, 'COMPLETED'),
    (1, 'COMPLETED'),
    (2, 'PENDING'),
    (3, 'COMPLETED');

INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
    (1, 1, 1, 3500.00),
    (1, 2, 2, 150.00),
    (2, 3, 1, 1200.00),
    (3, 2, 1, 150.00),
    (4, 3, 2, 1200.00);