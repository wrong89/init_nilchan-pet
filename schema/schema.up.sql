CREATE TABLE tasks(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    -- TODO: use unique constraint
    title VARCHAR(255),
    completed BOOLEAN DEFAULT FALSE
);