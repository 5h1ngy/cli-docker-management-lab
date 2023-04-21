# Docker Lab Management

Welcome to the Docker lab management project. This repository provides an organized solution for configuring complex Docker environments using Docker Compose and management scripts.

## Table of Contents

- [Docker Lab Management](#docker-lab-management)
  - [Table of Contents](#table-of-contents)
  - [Network Configuration](#network-configuration)
  - [Project Composition](#project-composition)
  - [Docker Environments](#docker-environments)
  - [Docker Image Management](#docker-image-management)
  - [Docker Volume Management](#docker-volume-management)
  - [Lab Start and Stop](#lab-start-and-stop)
  - [Lab Cleanup](#lab-cleanup)
  - [Installation and Usage](#installation-and-usage)
  - [Technologies Used](#technologies-used)
  - [Update hosts file](#update-hosts-file)
  - [Credentials](#credentials)
  - [Contribution](#contribution)
  - [License](#license)

## Network Configuration

The project utilizes different Docker networks to isolate components. Here's a summary of the used subnets:

```bash
10.0.0.0        10.0.0.1 - 10.7.255.254            10.7.255.255
10.8.0.0        10.8.0.1 - 10.15.255.254        10.15.255.255
10.16.0.0        10.16.0.1 - 10.23.255.254        10.23.255.255
10.24.0.0        10.24.0.1 - 10.31.255.254        10.31.255.255
```

## Project Composition

The project consists of various Docker Compose files defining services and networks. The main files are:

- `./scripts/lab-environments.yaml`: Defines Docker environments with various base configurations.
- `./scripts/lab-gateway.yaml`: Configures a gateway with Nginx Proxy Manager for HTTP request management.
- `./scripts/lab-services.yaml`: Specifies various laboratory services, including Excalidraw and Gitea.

## Docker Environments

The project utilizes different Docker environments configured through the `./docker/environments.Dockerfile` file. Some included environments are:

- **env-git**: Ubuntu with Git installed.
- **env-node-yarn**: Ubuntu with Git, Node.js, and Yarn installed.
- **env-node-yarn-v4**: Variant of `env-node-yarn` with a specific version of Node.js.
- **env-python3-node-yarn-v4**: Ubuntu with Git, Node.js, Yarn, and Python 3 installed.

## Docker Image Management

Scripts are available for loading and saving Docker images. Here are some examples:

- `./scripts/images-load.sh`: Loads previously saved Docker images.
- `./scripts/images-save.sh`: Saves Docker images used in the project.

## Docker Volume Management

Scripts are available for managing Docker volumes. Here are some examples:

- `./scripts/volumes-create.sh`: Creates necessary Docker volumes for the project.
- `./scripts/volumes-load.sh`: Loads data into Docker volumes.
- `./scripts/volumes-save.sh`: Saves data contained in Docker volumes.

## Lab Start and Stop

Scripts are available for starting and stopping the laboratory. Here are some examples:

- `./scripts/lab-up.sh`: Starts the laboratory using specified Docker Compose files.
- `./scripts/lab-down.sh`: Stops the laboratory, removing any orphaned containers.

## Lab Cleanup

- `./scripts/lab-prune.sh`: Performs cleanup by removing all unused Docker images and specified volumes.

## Installation and Usage

Before getting started, ensure you have Docker and Docker Compose installed on your system. Follow these steps:

1. Clone the repository:
   
   ```bash
   git clone <REPO_URL>
   ```

2. Navigate to the project directory:
   
   ```bash
   cd <PROJECT_NAME>
   ```

3. Configure the environment:
   
   Modify the `.env` file according to your needs.

4. Start the laboratory:
   
   ```bash
   ./scripts/lab-up.sh
   ```

## Technologies Used

- Docker
- Docker Compose
- Nginx Proxy Manager

## Update hosts file

```
# refer to localhost
lab-excalidraw      127.0.0.1
lab-gitea       127.0.0.1
```

## Credentials

- Nginx Proxy Manager: localhost:81

> username: administrator
> 
> email: [root@administrator.com](mailto:root@administrator.com)
> 
> password: 6XfRRjJAj@7F6FD

- Gitea: lab-gitea

> username: administrator
> 
> email: [root@administrator.com](mailto:root@administrator.com)
> 
> password: 6XfRRjJAj@7F6FD

## Contribution

If you wish to contribute to this project, open an issue or submit a pull request. All contributions are welcome!

## License

This project is distributed under the [MIT License](LICENSE).