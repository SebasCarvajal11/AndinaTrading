# Andina Trading - Sistema de Gestión Bursátil

![Java](https://img.shields.io/badge/Java-21-orange?style=for-the-badge&logo=java)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.3.5-6DB33F?style=for-the-badge&logo=spring)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Thymeleaf](https://img.shields.io/badge/Thymeleaf-%23005C0F.svg?style=for-the-badge&logo=Thymeleaf&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)

**Andina Trading** es una plataforma web desarrollada en **Java y Spring Boot** que permite a los usuarios simular la compra y venta de acciones en el mercado bursátil utilizando datos reales obtenidos a través de la API de Yahoo Finance.

---

## Características Principales

* **Integración de API REST:** Consumo de la API de Yahoo Finance vía RapidAPI para obtener el precio de las acciones en tiempo real.
* **Tareas Programadas (Cron Jobs):** Uso de `@Scheduled` en Spring Boot para actualizar los precios de las acciones en la base de datos automáticamente cada 60 segundos.
* **Gestión de Usuarios y Seguridad:** Registro e inicio de sesión con encriptación de contraseñas utilizando un algoritmo personalizado **AES (Advanced Encryption Standard)**.
* **Lógica de Negocio Financiera:**
    * Sistema de saldo/balance de usuarios.
    * Simulación de compra y venta de acciones calculando el precio actual.
    * Proyección de precios futuros utilizando análisis de medias móviles simples basado en datos históricos.
* **Interfaz de Usuario Interactiva:** Renderizado del lado del servidor con **Thymeleaf**, diseño responsivo con **Bootstrap 5** y gráficos dinámicos con **Chart.js**.

---

## Imagenes

### 1. Diagrama Entidad-Relación
![Diagrama Entidad-Relación](assets/der.PNG)

### 2. Diagrama de Clases
![Diagrama de Clases](assets/clases.PNG)

### 3. Pantalla de Inicio de Sesión y Registro
![Login y Registro](assets/login.PNG)

### 4. Panel Principal y Gráficos (Chart.js)
![Dashboard](assets/dashboard.PNG)

### 5. Perfil del Inversionista y Portafolio
![Perfil y Portafolio](assets/perfil.PNG)

---

## Arquitectura y Tecnologías

El proyecto sigue el patrón de diseño **MVC (Modelo-Vista-Controlador)** y arquitectura en capas:

* **Backend:** Java 21, Spring Boot (Web, Data JPA, Scheduling).
* **Frontend:** HTML5, CSS3, Bootstrap 5, Thymeleaf, JavaScript, Chart.js.
* **Base de Datos:** MySQL (Relaciones `@OneToMany`, `@ManyToOne`).
* **Herramientas:** Maven, IntelliJ IDEA, Git, RapidAPI.
