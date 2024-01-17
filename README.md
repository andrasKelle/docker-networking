
# ECR Repository and Docker Network Examples using Terraform

This repository contains a Terraform module and examples to create an Amazon Elastic Container Registry (ECR) repository and demonstrate various Docker network types.

## Table of Contents

- [ECR Repository and Docker Network Examples using Terraform](#ecr-repository-and-docker-network-examples-using-terraform)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Getting Started](#getting-started)
    - [ECR Repository](#ecr-repository)
    - [Docker Network Examples](#docker-network-examples)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Introduction

This project aims to provide a simple and reusable Terraform module to create an ECR repository on AWS. Additionally, it includes examples that showcase different Docker network types, allowing users to understand and experiment with various networking configurations for containerized applications.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed on your local machine.
- AWS credentials configured with the necessary permissions to create ECR repositories.
- Docker installed for building and running container images.

## Getting Started

### ECR Repository

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/andrasKelle/docker-networking.git
   ```

2. Navigate to the `infra` directory:

   ```bash
   cd infra
   ```

3. Initialize the Terraform configuration:

   ```bash
   terraform init
   ```

4. Create a `terraform.tfvars` file, define the variables and also customize the `main.tf` file with your desired settings, such as `scan_on_push` and `force_delete`.

5. Run the Terraform Plan command.

   ```bash
   terraform plan
   ```

6. Apply the Terraform configuration to create the ECR repository:

   ```bash
   terraform apply
   ```

### Docker Network Examples

![Alt text](./docker_networking.png?raw=true "Title")

The root directory contains the `docker-compose.yml` file demonstrating different network types. Each service represents a specific network type (e.g., bridge, host, none). Try to ping containers from different networks by their IP address. See what happens when you ping a Container inside a user-defined network e.g: `vip-clients` by their name. Connect a vip-client container to the default bridge network, and try to reach containers in it. After connecting, check it's IP adresses, to see how it changed.

## Usage

Feel free to use the provided examples as a starting point for your own projects. Modify the Terraform module and Docker Compose file according to your specific requirements.

## Contributing

If you find issues or have improvements to suggest, please open an issue or submit a pull request. Contributions are welcome!

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the code as needed.
