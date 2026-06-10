# ansible-sandbox

A local Ansible sandbox environment using Docker Compose. 

Spins up a control node, and 2 managed nodes. The `ansible` directory is mounted into the control node, and a Python virtual environment is already set up. Exec in to run Ansible commands.


## Usage

* `docker compose up -d`
* `docker compose exec control bash`
* `ansible all -m ping` (optional: tests connection to managed nodes)
