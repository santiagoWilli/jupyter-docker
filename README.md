# Jupyter-Docker

This is a simple Jupyter environment you can run using Docker.

## Installation

1. Clone the repository
2. Copy the `dependencies.txt.example` file into `dependencies.txt` and update it with the dependencies you need
    ```bash
    cp dependencies.txt.example dependencies.txt
    ```
3. Build and run the container!
    ```bash
    make run
    ```

## Usage
### Access to files

If there is any file you wish to have access from within the Docker container, place it under the `datasets` folder.

### Makefile commands
- **Run the container**
    ```bash
    make run
    ```

- **Stop and remove the container and volumes**
    ```bash
    make stop
    ```

- **Rebuild the image and restart the container**
    ```bash
    make rebuild
    ```

- **Enter the container in interactive mode**
    ```bash
    make shell
    ```

- **View container logs**
    ```bash
    make logs
    ```

- **List all containers**
    ```bash
    make ps
    ```
