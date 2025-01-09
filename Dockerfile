FROM jupyter/base-notebook:latest

# Set environment variables to prevent interactive prompts and ensure UTF-8 locale
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

USER root
RUN apt-get update && apt-get install -y \
    vim \
    && apt-get clean

COPY jupyter_notebook_config.py /home/jovyan/.jupyter/
RUN chmod -R 777 /home/jovyan/work

# Install dependencies from dependencies.txt
COPY dependencies.txt /home/jovyan/work/
RUN pip install --no-cache-dir -r /home/jovyan/work/dependencies.txt \
    && rm /home/jovyan/work/dependencies.txt

# Change to the default user
USER jovyan
WORKDIR /home/jovyan/work
