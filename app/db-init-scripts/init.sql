\connect gym_website;

        -- Table for User
CREATE TABLE appuser (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    full_name VARCHAR(255),
    date_of_birth DATE,
    role VARCHAR(50) NOT NULL
);

-- Table for Trainer
CREATE TABLE trainer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL
);

-- Table for Subscription
CREATE TABLE Subscription (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    user_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES appuser(id) ON DELETE CASCADE
);

-- Table for Purchase
CREATE TABLE Purchase (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    subscription_id BIGINT NOT NULL,
    purchase_date TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES appuser(id) ON DELETE CASCADE,
    FOREIGN KEY (subscription_id) REFERENCES Subscription(id) ON DELETE CASCADE
);

-- Table for Notification
CREATE TABLE notification (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    message TEXT NOT NULL,
    date_time TIMESTAMP NOT NULL,
    sent BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES appuser(id) ON DELETE CASCADE
);

-- Table for Session
CREATE TABLE session (
    id SERIAL PRIMARY KEY,
    trainer_id BIGINT NOT NULL,
    user_id BIGINT,
    date_time TIMESTAMP NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES trainer(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES appuser(id) ON DELETE SET NULL
);
