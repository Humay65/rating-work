def book_ticket(movie_title, seat_number, user_name):
    return f"Пользователь {user_name} успешно забронировал место {seat_number} на фильм '{movie_title}'"

if __name__ == "__main__":
    result = book_ticket("Интерстеллар", "A5", "Алиса")
    print(result)
