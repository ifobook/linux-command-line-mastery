#!/bin/bash

# Task 6: Shell Scripting
# Generates a basic system report and demonstrates
# variables, conditionals, loops, directories, and logging.

REPORT_DIR="artifacts/shell-scripting-test"
REPORT_FILE="$REPORT_DIR/system-report.txt"
LOG_FILE="$REPORT_DIR/script.log"

# Create the report directory if it does not exist
mkdir -p "$REPORT_DIR"

# Create sample files for loop demonstration
echo "Sample configuration data" > "$REPORT_DIR/config.txt"
echo "Sample application log" > "$REPORT_DIR/application.log"

# Variables
USER_NAME=$(whoami)
HOST_NAME=$(hostname)
CURRENT_DATE=$(date)

# Start the report
echo "==================================" > "$REPORT_FILE"
echo "       SYSTEM REPORT" >> "$REPORT_FILE"
echo "==================================" >> "$REPORT_FILE"

# Write system information
echo "User: $USER_NAME" >> "$REPORT_FILE"
echo "Hostname: $HOST_NAME" >> "$REPORT_FILE"
echo "Date: $CURRENT_DATE" >> "$REPORT_FILE"

# Conditional
if [ -d "$REPORT_DIR" ]; then
    echo "Report directory: EXISTS" >> "$REPORT_FILE"
else
    echo "Report directory: NOT FOUND" >> "$REPORT_FILE"
fi

# Loop
echo "" >> "$REPORT_FILE"
echo "Directory Contents:" >> "$REPORT_FILE"

for item in "$REPORT_DIR"/*; do
    if [ -e "$item" ] && [ "$item" != "$REPORT_FILE" ] && [ "$item" != "$LOG_FILE" ]; then
        echo "- $(basename "$item")" >> "$REPORT_FILE"
    fi
done

# System information
echo "" >> "$REPORT_FILE"
echo "Disk Usage:" >> "$REPORT_FILE"
df -h . | tail -1 >> "$REPORT_FILE"

# Log execution
echo "$(date): Script executed successfully." >> "$LOG_FILE"

echo "System report generated successfully."
echo "Report: $REPORT_FILE"
echo "Log: $LOG_FILE"
