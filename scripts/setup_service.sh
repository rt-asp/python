#!/bin/bash
# Konfiguracja usługi systemd dla rtasp

set -e  # Zatrzymanie przy błędzie

echo "===== Konfiguracja usługi systemd dla rtasp ====="

# Sprawdzenie uprawnień
if [ "$EUID" -ne 0 ]; then
  echo "Proszę uruchomić jako root (sudo)."
  exit 1
fi

# Ścieżka do zainstalowanego pakietu
rtasp_PATH=$(pip3 show rtasp | grep "Location" | awk '{print $2}')
if [ -z "$rtasp_PATH" ]; then
  echo "Błąd: Nie znaleziono pakietu rtasp. Czy został zainstalowany?"
  exit 1
fi

# Utworzenie usługi systemd
echo "Tworzenie usługi systemd..."
cat > /etc/systemd/system/rtasp.service << EOF
[Unit]
Description=rtasp - Bezpieczny interfejs głosowy AI dla dzieci
After=network.target

[Service]
ExecStart=/usr/bin/python3 -m rtasp
WorkingDirectory=/home/$SUDO_USER
StandardOutput=journal
StandardError=journal
Restart=always
User=$SUDO_USER
Environment=PYTHONUNBUFFERED=1

[Install]
WantedBy=multi-user.target
EOF

# Aktywacja usługi
echo "Aktywacja usługi..."
systemctl daemon-reload
systemctl enable rtasp.service

echo "===== Konfiguracja usługi zakończona! ====="
echo "Aby uruchomić usługę: sudo systemctl start rtasp"
echo "Aby sprawdzić status: sudo systemctl status rtasp"
echo "Aby zatrzymać usługę: sudo systemctl stop rtasp"