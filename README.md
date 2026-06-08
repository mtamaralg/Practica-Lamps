# Práctica: Despliegue Automatizado de Pila LAMP

## 📖 Descripción General
Este repositorio contiene los scripts y archivos de configuración necesarios para automatizar la instalación de una **Pila LAMP** (Linux, Apache, MySQL, PHP) en un servidor con sistema operativo Ubuntu/Debian. 

El objetivo es levantar un servidor web funcional con base de datos y procesador PHP ejecutando un único script, minimizando la intervención manual y garantizando un entorno rápido y estandarizado.

## 📂 Estructura del Repositorio
El proyecto sigue una estructura modular separando la configuración, el código y la automatización:

* **`conf/`**: Contiene los archivos de configuración del servidor web.
  * `000-default.conf`: Configuración del VirtualHost principal de Apache. Define `/var/www/html/` como directorio raíz y establece la prioridad de lectura para archivos PHP (`DirectoryIndex index.php index.html`).
* **`php/`**: Contiene los scripts de la aplicación web.
  * `index.php`: Archivo de prueba con la función `phpinfo()` para verificar que el procesador PHP y el servidor web funcionan correctamente.
* **`scripts/`**: Contiene los ejecutables de automatización.
  * `install_lamp.sh`: Script principal en Bash que orquesta la instalación de toda la infraestructura.

## ⚙️ ¿Qué hace el script de instalación?
Al ejecutar `install_lamp.sh`, el sistema realiza automáticamente los siguientes pasos en orden:
1. Actualiza los repositorios locales de paquetes (`apt update`).
2. Instala el servidor web **Apache HTTP Server**.
3. Copia el archivo `000-default.conf` personalizado al directorio de sitios disponibles de Apache (`/etc/apache2/sites-available/`).
4. Instala el motor de bases de datos **MySQL Server**.
5. Instala **PHP** junto con el módulo de integración para Apache (`libapache2-mod-php`) y el driver de conexión a MySQL (`php-mysql`).
6. Reinicia el servicio de Apache para aplicar los cambios en el VirtualHost.
7. Despliega la aplicación web copiando el archivo `index.php` al directorio público raíz (`/var/www/html`).

## 🚀 Instrucciones de Uso

Para ejecutar el despliegue correctamente en una máquina virtual limpia de Ubuntu, sigue estos pasos:

1. Clona este repositorio en tu servidor:
   ```bash
   git clone [https://github.com/tu-usuario/tu-repositorio.git](https://github.com/tu-usuario/tu-repositorio.git)




Imagenes de comprobacion

<img width="1586" height="373" alt="Practica Lamps" src="https://github.com/user-attachments/assets/5bd823f2-cdb1-4ea4-a7cf-2c6d6f629d52" />


<img width="1901" height="1012" alt="Navegador Practica Lamps" src="https://github.com/user-attachments/assets/89d9d530-f994-4e88-a949-e327f754b129" />

