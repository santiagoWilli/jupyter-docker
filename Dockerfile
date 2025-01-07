# Usar la imagen base de Jupyter con Python
FROM jupyter/scipy-notebook:latest

# Establecer permisos para evitar problemas con el usuario jovyan
USER root

# Instalar cualquier dependencia adicional si lo necesitas
RUN apt-get update && apt-get install -y \
    vim \
    && apt-get clean

# Copiar el archivo de configuración al contenedor
COPY jupyter_notebook_config.py /home/jovyan/.jupyter/

# Crear y establecer los permisos adecuados para el directorio de trabajo
RUN chmod -R 777 /home/jovyan/work

# Cambiar al usuario jovyan (usuario por defecto en jupyter/scipy-notebook)
USER jovyan

# Establecer el directorio de trabajo
WORKDIR /home/jovyan/work
