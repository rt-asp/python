# [RTASP - Real-Time Annotation and Stream Processing](http://www.rtasp.com)

RTASP to modularny system do wykrywania, przetwarzania i analizy strumieni wideo w czasie rzeczywistym. System umożliwia łatwą integrację z kamerami IP, mikrofonami i innymi źródłami sygnału, a także zapewnia zaawansowane możliwości adnotacji i analizy przy użyciu modułów AI.

## Główne funkcje

- **Automatyczne wykrywanie kamer RTSP** w sieci lokalnej
- **Zarządzanie strumieniami wideo** z różnych źródeł
- **Przetwarzanie AI** (wykrywanie ruchu, obiektów, twarzy, rozpoznawanie mowy)
- **Interfejs webowy** do zarządzania systemem
- **Protokół komunikacyjny MCP** (Message Communication Protocol) do integracji modułów
- **Nagrywanie i wykonywanie zrzutów ekranu**
- **Modułowa architektura** umożliwiająca łatwe rozszerzanie funkcjonalności

## Szybka instalacja

Aby zainstalować RTASP na systemie Debian/Ubuntu/Raspberry Pi OS, wykonaj następującą komendę:

```bash
curl -sSL https://raw.githubusercontent.com/rt-asp/python/main/scripts/quick-install.sh | sudo bash
```

System zostanie zainstalowany w katalogu `/opt/rtasp` i uruchomiony jako usługa systemd.

## Wymagania systemowe

- Python 3.8 lub nowszy
- System operacyjny: Debian, Ubuntu, Raspberry Pi OS (lub inny oparty na Linuxie)
- Minimum 2GB RAM (4GB zalecane)
- Minimum 1GB wolnego miejsca na dysku (więcej w przypadku nagrywania strumieni)
