CREATE TABLE IF NOT EXISTS parent (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE ,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    phone_number VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS children (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    phone_number VARCHAR(20)
);

CREATE TABLE parent_children (
    parent_id INT,
    children_id INT,
    PRIMARY KEY (parent_id, children_id),
    FOREIGN KEY (parent_id) REFERENCES parent(id),
    FOREIGN KEY (children_id) REFERENCES children(id)
);