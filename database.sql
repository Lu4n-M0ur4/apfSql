-- Active: 1695823381442@@127.0.0.1@3306

CREATE TABLE
    accounts (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        owner TEXT NOT NULL,
        balance REAL NOT NULL,
        category TEXT NOT NULL
    );

INSERT INTO
    accounts (id, owner, balance, category)
VALUES (
        'a001',
        'Fulano',
        12235.98,
        'Ouro'
    ), (
        'a002',
        'Ciclana',
        19743.21,
        'Black'
    ), (
        'a003',
        'Beltrano',
        7345.88,
        'Ouro'
    ), (
        'a004',
        'Astrodev',
        432.57,
        'Black'
    ),
     (
        'a005',
        'Astrodev',
        432.57,
        'Black'
    ),
    (
        'a006',
        'Astrodev',
        432.57,
        'Black'
    );

SELECT * FROM accounts;

SELECT * FROM accounts WHERE id = 'a003';

SELECT * FROM accounts WHERE owner LIKE '%A%';

SELECT id, owner AS titular, balance, category FROM accounts;

SELECT * FROM accounts ORDER BY balance DESC;

SELECT
    COUNT(*) as numberOfAccounts,
    category
FROM accounts
GROUP BY category;

SELECT * FROM accounts
LIMIT 4
OFFSET 2;
