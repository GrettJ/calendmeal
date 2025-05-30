# 🗓️ CalendMeal - Backend

CalendMeal es una aplicación web que genera planes semanales de comidas. Este repositorio contiene el backend desarrollado con **Java 17**, **Spring Boot**, y **PostgreSQL** como base de datos principal.

## 🚀 Descripción

El backend se encarga de:

- Gestionar la conexión y consultas a la base de datos PostgreSQL.
- Proveer endpoints para generar planes semanales de comida.
- Recoger los alérgenos asociados a cada comida.
- Filtrar recetas excluyendo aquellas que contengan alérgenos seleccionados por el usuario.

---

## ⚙️ Tecnologías utilizadas

- **Java 17**
- **Spring Boot 3+**
- **Spring Data JPA**
- **PostgreSQL**
- **Maven** o **Gradle** (según tu setup)
- **Spring Web** para la capa REST

---

## 🧠 Funcionalidades principales

### 🔍 Gestión de alérgenos

- Endpoint para obtener la lista de alérgenos disponibles.
- Asociación de alérgenos con recetas mediante relaciones en la base de datos.
- Endpoint para filtrar y mostrar únicamente las recetas **sin los alérgenos seleccionados**.

### 🗓️ Generación de plan semanal

- Método para generar un plan semanal de comidas variado.
- Cada día del plan puede incluir varias comidas (desayuno, comida, cena, etc.).

---

## 🔧 Instalación y ejecución

### 1. Clona el repositorio

```bash
git clone git@github.com:tu-usuario/calendmeal-backend.git
cd calendmeal-backend
