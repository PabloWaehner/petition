DROP TABLE IF EXISTS profiles CASCADE;

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    age VARCHAR(100),
    city VARCHAR(100),
    url VARCHAR(100),
    user_id INTEGER NOT NULL UNIQUE REFERENCES users(id),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);