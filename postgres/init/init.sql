CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT,
  amount NUMERIC,
  status TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (name, email)
VALUES ('Alice', 'alice@test.com'),
       ('Bob', 'bob@test.com');

INSERT INTO orders (user_id, amount, status)
VALUES (1, 100.50, 'CREATED'),
       (2, 250.00, 'CREATED');
