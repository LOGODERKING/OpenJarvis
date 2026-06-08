#!/bin/sh
set -e
# Bootstrap config on first run so cloud engine is picked up automatically.
jarvis _bootstrap --write-config --prefer-cloud-when-available
exec jarvis serve --host 0.0.0.0 --port "${PORT:-8000}"
