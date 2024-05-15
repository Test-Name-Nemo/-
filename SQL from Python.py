import psycopg2

conn = psycopg2.connect(database="netology_db", user="postgres", password="oiuy7698")


with conn.cursor() as cur:
# Функция, создающая структуру БД (таблицы).

    cur.executemany("""
        CREATE TABLE IF NOT EXISTS client
            (id SERIAL PRIMARY KEY,
            name VARCHAR(16) NOT NULL,
            family_name VARCHAR(40) NUT NULL,
            e-mail VARCHAR(40) UNIQUE
                );
                
        CREATE TABLE IF NOT EXISTS phone
            (id_client INT NOT NULL REFERENCES client(id),
            phone_client VARCHAR(40) NULL
                    );
                """)

    conn.commit()

#  Функция, позволяющая добавить телефон для существующего клиента.
    cur.execute("""
        INSERT INTO phono SET client_photo=%s WHERE id=%s;
        """ ('84599567935286', 1))

    conn.commit()

# Функция, позволяющая добавить нового клиента.

    cur.execute("""
        INSERT INTO client (name, family_name, e-mail) VALUES 
        ('Игорь', 'Князев', 'kniaz@ya.ru')
        RETURNING *;
                """)
    conn.commit()


# Функция, позволяющая изменить данные о клиенте.

    cur.execute("""
        UPDATE client SET name=%s family_name=%s WHERE id=%s;
        """, ('Евгений', 'Конев', 1))

    cur.execute("""
        SELECT * FROM course;
        """)
    print(cur.fetchall())


# Функция, позволяющая удалить телефон для существующего клиента.
    cur.execute("""
        DELETE FROM phono WHERE phono_client=%s;
        """, (1,))
    cur.execute("""
        SELECT * FROM photo_client;
        """)

# Функция, позволяющая удалить существующего клиента.
    cur.execute("""
        DELETE FROM client WHERE id=%s;
        """, (1,))

    cur.execute(""""
        SELECT * FROM client;
        """)

    print(cur.fetchall()) 

# Функция, позволяющая найти клиента по его данным: имени, фамилии, emai (поиск по name, можно поставить любые параметры)

    def get_client_id(cur, name: str) -> int:

        cur.execute("""
            SELECT id FROM client WHERE name=%s;
            """, (name,))
        
        return cur.fetchone()[0]
        py_id = get_client_id(cur, 'Евгений')
        print('client', py_id)

# Функция, позволяющая найти клиента по его данным - поиск по телефону
    def get_c_id(cur, phono_client: str):

        cur.execute("""
            SELECT id FROM client c
            JOIN photo p ON c.id = p.id_client
            WHERE phono_client=%s;
            """, (phono_client,))
        
        return cur.fetchone()[0]
        py_id = get_c_id(cur, '84599567935286')
        print('client', py_id)


conn.close()
