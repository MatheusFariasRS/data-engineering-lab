import csv
import os
from pathlib import Path

import psycopg
from dotenv import load_dotenv


load_dotenv()

output_path = Path("data/raw/orders.csv")
output_path.parent.mkdir(parents=True, exist_ok=True)

connection = psycopg.connect(
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT"),
    dbname=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
)

with connection.cursor() as cursor:
    cursor.execute("""
        SELECT
            id,
            customer_id,
            status,
            created_at,
            updated_at
        FROM orders
        ORDER BY id
    """)

    orders = cursor.fetchall()
    columns = [column.name for column in cursor.description]

with output_path.open("w", newline="", encoding="utf-8") as file:
    writer = csv.writer(file)

    writer.writerow(columns)
    writer.writerows(orders)

connection.close()

print(f"Extracted {len(orders)} orders to {output_path}")