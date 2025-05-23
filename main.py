import sqlite3

conn = sqlite3.connect('cinema.db')
cur = conn.cursor()

cur.execute("INSERT INTO films (title, genre, duration) VALUES (?, ?, ?)", 
            ("Интерстеллар", "Фантастика", 169))
conn.commit()

cur.execute("SELECT * FROM films")
for row in cur.fetchall():
    print(row)

conn.close()
