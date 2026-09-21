# telegram-server-monitor
A containerized Bash server monitoring tool that sends system status information to Telegram.
# Telegram Server Monitor

A simple Bash-based server monitoring tool that collects basic system information and sends it to a Telegram bot.

## Features

- Sends server information to Telegram
- Displays hostname
- Displays memory usage
- Displays system uptime
- Runs as a Podman container
- Built with Bash and Docker/Podman

## Project Structure

```text
telegram-server-monitor/
├── bot.sh
├── Dockerfile
├── config.example.sh
├── .dockerignore
├── .gitignore
└── README.md
Requirements
- Linux
- Bash
- Podman or Docker
- curl
- Telegram Bot
Configuration
Create a config.sh file based on config.example.sh:
BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"
Do not upload config.sh to GitHub.
The .gitignore file is configured to exclude it.
Running the Script
Make the script executable:
chmod +x bot.sh
Run:
./bot.sh
Running with Podman
Build the image:
podman build -t telegram-monitor .
Run the container:
podman run --name telegram-monitor telegram-monitor
Security
The Telegram bot token is a secret and should never be committed to GitHub.
Use environment variables or another secure secret-management method when deploying the container.
Future Improvements
- CPU usage monitoring
- Disk usage monitoring
- IP address detection
- Telegram commands such as /status, /cpu, /ram, /disk
- Automatic alerts
- Wazuh integration
- Secure container secrets
- Systemd service integration
Technologies
- Bash
- Linux
- Podman
- Docker
- Telegram Bot API
