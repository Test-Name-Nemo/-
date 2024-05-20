import psycopg2

# Функция, создающая структуру БД (таблицы).

def create_db(cur):
    cur.executemany("""
            CREATE TABLE IF NOT EXISTS client
            (id SERIAL PRIMARY KEY,
            name VARCHAR(16) NOT NULL,
            family_name VARCHAR(40) NUT NULL,
            email VARCHAR(40) UNIQUE
            );

            CREATE TABLE IF NOT EXISTS phone
                (id_client INT NOT NULL REFERENCES client(id),
                phone_client VARCHAR(40) NULL
                    );
                """)

    conn.commit()

#  Функция, позволяющая добавить телефон для существующего клиента.

def add_tel(cur, client_id, phone_client):
    cur.execute("""
        INSERT INTO phone(client_id, phone_client)
        VALUES (%s, %s)
        """, (client_id, phone_client))
    return client_id


# Функция, позволяющая добавить нового клиента.
def add_client(cur, name=None, family_name=None, email=None, phone_client=None):
    cur.execute("""
        INSERT INTO client(name, family_name, email)
        VALUES (%s, %s, %s)
        """, (name, family_name, email))
    cur.execute("""
        SELECT id from clients
        ORDER BY id DESC
        LIMIT 1
        """)
    id = cur.fetchone()[0]
    if phone_client is None:
        return id
    else:
        cur.execute("""
            INSERT INTO phone(phone_client)
            VALUES (%s)""",(phone_client))
        return id


# Функция, позволяющая изменить данные о клиенте.

def change_client(cur, id, name=None, family_name=None, email=None):
    cur.execute("""
        UPDATE client
        SET name = %s, family_name = %s, email =%s 
        WHERE id = %s
        """, (name, family_name, email, id))
    return id


# Функция, позволяющая удалить телефон для существующего клиента.
     
def delete_phone(cur, phone_client):
    cur.execute("""
        DELETE FROM phone 
        WHERE number = %s
        """, (phone_client, ))
    return phone_client


# Функция, позволяющая удалить существующего клиента.
def delete_client(cur, id):
    cur.execute("""
        DELETE FROM phone
        WHERE client_id = %s
        """, (id, ))
    cur.execute("""
        DELETE FROM client
        WHERE id = %s
       """, (id,))
    return id 

# Функция, позволяющая найти клиента по его данным: имени, фамилии, emai (поиск по name, можно поставить любые параметры)
def find_client(cur, name=None, family_name=None, email=None, phone_client=None):
    if name is None:
        name = '%'
    else:
        name = '%' + name + '%'
    if family_name is None:
        family_name = '%'
    else:
        family_name = '%' + family_name + '%'
    if email is None:
        email = '%'
    else:
        email = '%' + email + '%'
    if phone_client is None:
        cur.execute("""
            SELECT c.id, c.name, c.family_name, c.email, p.phone_client FROM client c
            JOIN phone p ON c.id = p.id_client
            WHERE c.name LIKE %s AND c.family_name LIKE %s
            AND c.email LIKE %s
            """, (name, family_name, email))
    else:
        cur.execute("""
            SELECT c.id, c.name, c.family_name, c.email, p.phone_client FROM client c
            JOIN phone p ON c.id = p.id_client
            WHERE c.name LIKE %s AND c.family_name LIKE %s
            AND c.email LIKE %s AND p.phone_client LIKE %s
            """, (name, family_name, email, phone_client))
    return cur.fetchall()

        
        
conn = psycopg2.connect(database="netology_db", user="postgres", password="postgres")
with conn.cursor() as cur:
    
    print(add_tel(cur, 2, 79877876543))
    print(add_tel(cur, 1, 79621994802))
    print(add_client(cur, "Сергей", "Кабаёв", "cabaev@mail.ru"))
    print(add_client(cur, "Игорь", "Князев", "0t@ya.ru", 79993318644))
    print(change_client(cur, 4, "Иван", None, '123@outlook.com'))
    print(delete_phone(cur, '79621994802'))
    print(delete_client(cur, 2))
    print(find_client(cur, "Сергей", "Кабаёв"))      
    print(find_client(cur, None, None, None, '79913312643'))

conn.close()