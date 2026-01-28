# Project 4: Containerized Deployment (Docker Compose)

## Overview
This project demonstrates "Infrastructure as Code" by defining a multi-container application (WordPress + MySQL) in a single YAML file.

## Architecture
- **Service A (Database)**: MySQL 5.7 with persistent volume storage.
- **Service B (Frontend)**: WordPress running on port 8000.
- **Networking**: Services communicate via an internal Docker bridge network.

## Usage
1. Start the stack:
   ```bash
   docker-compose up -d
