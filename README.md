# 🏥 Sistema de Gestión - Centro de Salud (`medi_sistemas`)

¡Bienvenido al repositorio! Este proyecto fue desarrollado como respuesta al examen práctico de diseño e implementación de bases de datos para la gestión integral de un centro de salud.

---

## 📌 ¿De qué trata este proyecto?

En muchos centros de salud, llevar el control de quién está trabajando, quién está cubriendo un turno o cuántas vacaciones le quedan a un empleado se hace de forma manual, lo que genera desorden, errores y pérdida de tiempo.

El objetivo de este examen fue **diseñar e implementar una base de datos centralizada en MySQL (`medi_sistemas`)** que organice la información de médicos, empleados no médicos y pacientes, automatizando el control de turnos, reemplazos y días de descanso.

---

## 🛠️ Lo que hicimos para resolverlo

1. **Modelado y Diseño:** Analizamos la lógica del centro de salud e identificamos las entidades clave (`medicos`, `empleados`, `pacientes`, `horarios`, `sustituciones` y `vacaciones`) para estructurar un diagrama claro con sus respectivas relaciones y cardinalidades.
2. **Creación de la Estructura (DDL):** Construimos las tablas asegurando la integridad referencial mediante claves primarias (`PRIMARY KEY`) y claves foráneas (`FOREIGN KEY`), además de definir campos obligatorios (`NOT NULL`) y tipos especiales (`ENUM` para los tipos de médico y estado de vacaciones).
3. **Poblado con Datos de Prueba (DML):** Insertamos un conjunto de datos ficticios pero realistas (médicos titulares, interinos y sustitutos, personal de soporte, asignación de pacientes, turnos semanales, registros de sustituciones y vacaciones) para comprobar el correcto funcionamiento del sistema.
4. **Resolución de Consultas:** Diseñamos y probamos las sentencias SQL necesarias para dar respuesta a las preguntas operativas del centro de salud.

---

## 🧰 Herramientas Utilizadas

* **Base de Datos:** MySQL
* **Lenguaje de Consulta:** SQL
* **Herramientas de Diseño:** MySQL Workbench / drawSQL / StarUML

---

## 📁 Contenido del Repositorio

* **`estructura.sql`**: Script DDL para crear la base de datos `medi_sistemas` y todas sus tablas con claves primarias y foráneas.
* **`datos.sql`**: Script DML para insertar los datos de prueba iniciales.
* **`README.md`**: Explicación del proyecto y soluciones a las consultas planteadas.

---

## 🚀 ¿Cómo ejecutar este proyecto?

1. Abre tu gestor de base de datos preferido (como **MySQL Workbench** o la consola de MySQL).
2. Ejecuta el código de creación de la base de datos y tablas (`estructura.sql`).
3. Ejecuta los scripts de inserción de datos (`datos.sql`).
4. Corre las siguientes consultas para verificar y analizar los datos.

---
