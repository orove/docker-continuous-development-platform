# docker-continuous-development-platform
La idea de este repositorio, es proporcionar un script para docker-compose que permita levantar distintas herramientas de integración continua y automatización, como Jenkins, SonarQube, Nexus y Selenium entre otras, proporcionando una plataforma para desarrollar, integrar y probar de forma continua.

### Arquitectura
![alt tag](https://github.com/orove/docker-continuous-development-platform/blob/master/diagrama-componentes.png)



### Historial de Cambios
 * **0.2alpha**: Se crean directorios con puntos de montaje y se conectan los contenedores entre sí mediante un una red bridge.
 * **0.1beta**: Se corrige problema con la carga de imágenes de Nexus utilizando parámetros 'proxy_set_header' y 'subfilter'en archivo de configuración html/nginx.conf
 * **0.1alpha**: Se crean contenedores out-of-the-box de Jenkins, SonarQube, Nexus, Nginx, MySQL y Selenium (Chrome Debug)

### Roadmap
 * **0.1**: Disponibilizar desde página de inicio de Nginx acceso a Jenkins, SonarQube, Nexus, MySQL y Selenium (contenedores out-of-the-box)
 * **0.2**: Ajustar puntos de montaje en contenedores y crear Dockerfiles, si es necesario. Personalización básica de contenedores para asegurar la interoperabilidad.
 * **0.3**: Configurar Jenkins para crear nodo esclavo 'on-demand' con herramientas para compilar, empaquetar y publicar aplicaciones java (Maven).
 * **0.4**: Configurar tareas en Jenkins para ejecutar escaner de SonarQube, publicación de artefactos en Nexus y levantar contenedor para deploy.
 * **0.5**: Configurar Jenkins para ejecutar pruebas automatizadas de Selenium sobre contenedor java con aplicación publicada.
