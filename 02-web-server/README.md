# Project 2: Nginx Web Server Configuration

## Overview
This configuration file demonstrates how to set up Nginx as both a static file server and a reverse proxy.

## Key Concepts Demonstrated
- **Virtual Hosts**: Handling traffic for specific domain names.
- **Reverse Proxy**: Forwarding `/api/` traffic to an internal backend service running on port 3000.
- **Security**: Basic SSL/TLS structure and HTTP-to-HTTPS redirection.

## Deployment
Copy this file to `/etc/nginx/sites-available/` and create a symlink to `sites-enabled/`.
