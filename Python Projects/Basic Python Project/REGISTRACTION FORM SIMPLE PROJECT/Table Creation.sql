CREATE TABLE Users_Info (
    user_id SERIAL PRIMARY KEY,  -- Auto-generate unique IDs
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),         -- Add gender column after last_name
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    phone VARCHAR(20)
);
