#!/bin/bash

LOG_FILE="validation.log"

echo "[$(date +'%Y-%m-%d %H:%M:%S')] Starting validation..." >> "$LOG_FILE"

if [ ! -d "src/" ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] ERROR: src/ directory is missing" >> "$LOG_FILE"
    exit 1
fi

if ! node -e "JSON.parse(require('fs').readFileSync('config.json'))" 2>/dev/null; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] ERROR: config.json is invalid" >> "$LOG_FILE"
    exit 1
fi

echo "[$(date +'%Y-%m-%d %H:%M:%S')] Validation passed" >> "$LOG_FILE"
