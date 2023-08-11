import sys
import pymysql
import random
from datetime import datetime

# Obtener el valor de "placa" desde los argumentos de la línea de comandos
placa = sys.argv[1]

# Hacer lo que necesites con el valor de "placa"
print("Placa recibida:", placa)

# Datos de conexión a la base de datos
host = "127.0.0.1"
user = "root"
password = "Egiovanni66-"
database = "CHECADOR3000"

# Obtener la fecha y hora actual
fecha_actual = datetime.now().date()
hora_actual = datetime.now().time()

# Intentar establecer la conexión a la base de datos
try:
    connection = pymysql.connect(host=host, user=user, password=password, database=database)
    print("Conexión a la base de datos exitosa")

    # Consultar id_ruta y numero_de_ruta en la tabla inf_ruta
    with connection.cursor() as cursor:
        select_query = "SELECT id_ruta, numero_de_ruta FROM inf_ruta WHERE placas = %s"
        cursor.execute(select_query, (placa,))
        result = cursor.fetchone()

        if result:
            id_ruta, numero_de_ruta = result

            # Datos para insertar en la tabla checador
            ubicacion_actual = "Av. Universidad 120"
            tiempo_estimado = random.randint(5, 20)
            proxima_parada = "Buena vista 20"

            # Insertar datos en la tabla checador
            with connection.cursor() as cursor:
                insert_query = "INSERT INTO checador (id_ruta, placas, numero_de_ruta, ubicacion_actual, tiempo_estimado, proxima_parada, fecha_checada, hora_checada) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
                cursor.execute(insert_query, (id_ruta, placa, numero_de_ruta, ubicacion_actual, tiempo_estimado, proxima_parada, fecha_actual, hora_actual))
                connection.commit()
                print("Datos insertados correctamente")
        else:
            print("No se encontró la placa en la tabla inf_ruta")

except pymysql.MySQLError as e:
    print("Error al conectar a la base de datos:", e)

finally:
    if connection:
        connection.close()
        print("Conexión cerrada")
