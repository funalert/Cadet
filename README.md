# Cadet

A space-themed UI on top of [Admiral](https://github.com/jbuffin/admiral). Admiral's ships become spacecraft in orbit,
fleets become stations, and orders become the mission queue. Launch from a station, click a craft to board its terminal.

## Install

```sh
brew install jbuffin/admiral/admiral && admiral setup && admiral service install   # Admiral, once
git clone <this repo> && cd Cadet && ./install.sh                                  # Cadet
```

Open http://127.0.0.1:7421/. Cadet runs in the background and starts at login. It needs only Python 3 (already an Admiral dependency).

## How it works

`cadet` is one stdlib Python file. It serves `web/` and forwards `/api` and `/ws` to Admiral (default `127.0.0.1:7420`),
so Cadet holds no state of its own. Config: `CADET_LISTEN`, `CADET_ADMIRAL`.

Commands: `cadet install` (background service, starts at login), `cadet uninstall`, `cadet status`, `cadet open`, or plain `cadet` to run in a terminal.
