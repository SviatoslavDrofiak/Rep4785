#!/bin/bash

echo "===== ОС Версія ====="
lsb_release -a 2>/dev/null || cat /etc/os-release

echo -e "\n===== Користувачі з bash ====="
cat /etc/passwd | grep "bash" | cut -d: -f1

echo -e "\n===== Відкриті порти ====="
sudo ss -tulnp
