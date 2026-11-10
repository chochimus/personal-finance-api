CREATE TYPE transaction_type AS ENUM('income', 'expense');

CREATE TABLE categories(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL CHECK (LENGTH(name) < 100),
    type transaction_type NOT NULL,
    UNIQUE (id, type)
);

CREATE TABLE transactions(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    description TEXT NOT NULL CHECK (LENGTH(description) < 500),
    amount NUMERIC(12, 2) NOT NULL,
    type  transaction_type NOT NULL,
    category_id INT NOT NULL,
    transaction_date DATE DEFAULT CURRENT_DATE NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,

    FOREIGN KEY (category_id, type)
        REFERENCES categories (id, type)
        ON UPDATE CASCADE
);