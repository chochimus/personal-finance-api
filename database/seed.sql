INSERT INTO categories(name, type) VALUES 
    ('work', 'income'),
    ('side gig', 'income'),
    ('investments', 'income'),
    ('eating out', 'expense'),
    ('groceries', 'expense'),
    ('utilities', 'expense'),
    ('rent', 'expense'),
    ('entertainment', 'expense');


-- --- INCOME ---
-- Work (Bi-weekly standard payments)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('Bi-weekly Direct Deposit Paycheck', 2400.00, 'income', 1, '2026-10-02'),
       ('Bi-weekly Direct Deposit Paycheck', 2400.00, 'income', 1, '2026-10-16'),
       ('Bi-weekly Direct Deposit Paycheck', 2400.00, 'income', 1, '2026-10-30'),
       ('Bi-weekly Direct Deposit Paycheck', 2400.00, 'income', 1, '2026-11-13');

-- Side Gig (Dynamic milestone payments)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('Upwork Freelance Logo Design Client', 450.00, 'income', 2, '2026-10-08'),
       ('Stripe Payout Website Consultation', 320.00, 'income', 2, '2026-10-22'),
       ('Fiverr Contract App Feature Milestone', 600.00, 'income', 2, '2026-11-04');

-- Investments (Passive capital gains & dividends)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('Quarterly S&P 500 Index Fund Dividends', 65.20, 'income', 3, '2026-10-15'),
       ('High-Yield Savings Account Monthly Interest', 42.15, 'income', 3, '2026-10-31');
       
-- --- EXPENSES ---
-- High Value / Fixed Recurring (Great for CRUD / pagination ordering)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
    VALUES ('Monthly Apartment Rent Payment', 1650.00, 'expense', 7, '2026-10-01'),
           ('Monthly Apartment Rent Payment', 1650.00, 'expense', 7, '2026-11-01');

-- Utilities (Varying amounts)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('Electric Bill - City Power & Light', 112.45, 'expense', 6, '2026-10-04'),
       ('Fiber Internet Subscription', 79.99, 'expense', 6, '2026-10-10'),
       ('Water and Sewage Utility', 45.20, 'expense', 6, '2026-10-18'),
       ('Fiber Internet Subscription', 79.99, 'expense', 6, '2026-11-10');

-- Groceries (Varying small & large bounds for range filters)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('Supermarket Weekly Haul', 134.50, 'expense', 5, '2026-10-03'),
       ('Mid-week Convenience Grocery Run', 18.25, 'expense', 5, '2026-10-07'),
       ('Bulk Stock Up Wholesale Club', 245.10, 'expense', 5, '2026-10-17'),
       ('Supermarket Weekly Haul', 151.20, 'expense', 5, '2026-10-24'),
       ('Fresh Produce Farmers Market', 28.50, 'expense', 5, '2026-11-07');

-- Eating Out (High frequency, dynamic text values)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('DoorDash - Taco Bell Late Night', 40.32, 'expense', 4, '2026-10-02'),
       ('Local Coffee Shop Espresso & Pastry', 8.75, 'expense', 4, '2026-10-06'),
       ('Chipotle Mexican Grill Lunch Drop', 16.40, 'expense', 4, '2026-10-14'),
       ('Sushi Dinner with Friends', 94.50, 'expense', 4, '2026-10-23'),
       ('Ramen Shop Lunch Single Entry', 19.10, 'expense', 4, '2026-11-04');

-- Entertainment (Good for boundary filtering)
INSERT INTO transactions(description, amount, type, category_id, transaction_date) 
VALUES ('Streaming Service Bundle Plan', 15.99, 'expense', 8, '2026-10-05'),
       ('Movie Theater IMAX Tickets and Snacks', 42.00, 'expense', 8, '2026-10-19'),
       ('Steam Game Autumn Sale Purchase', 59.98, 'expense', 8, '2026-10-28'),
       ('Streaming Service Bundle Plan', 15.99, 'expense', 8, '2026-11-05');