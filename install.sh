#!/bin/sh
# One-step Cadet setup: run from a checkout. Needs Admiral (brew install jbuffin/admiral/admiral).
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
BIN="${PREFIX:-$HOME/.local}/bin"

command -v python3 >/dev/null || { echo "python3 is required (brew install python)"; exit 1; }
command -v admiral >/dev/null || echo "Note: Admiral isn't installed yet: brew install jbuffin/admiral/admiral"

mkdir -p "$BIN"
ln -sf "$DIR/cadet" "$BIN/cadet"
chmod +x "$DIR/cadet"
case ":$PATH:" in *":$BIN:"*) ;; *) echo "Add $BIN to your PATH: export PATH=\"$BIN:\$PATH\"" ;; esac

"$DIR/cadet" install
echo "Cadet is installed. Open it with 'cadet open'. Remove it with 'cadet uninstall'."
