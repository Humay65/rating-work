CREATE TABLE films (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    genre TEXT,
    duration INTEGER
);

CREATE TABLE sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    film_id INTEGER,
    session_time TEXT,
    available_seats INTEGER,
    FOREIGN KEY (film_id) REFERENCES films(id)
);

CREATE TABLE tickets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    customer_name TEXT,
    seat_number INTEGER,
    FOREIGN KEY (session_id) REFERENCES sessions(id)
);
