#!/bin/bash
# Script to build and run CAETE model

echo "================================="
echo "🔧 Building CAETE model..."
echo "================================="
make

echo "================================="
echo "▶️ Running CAETE model..."
echo "================================="

# Build argument for config file (default to caete.toml)
# ARG CONFIG_FILE=caete.toml
# RUN cp /app/${CONFIG_FILE} /app/src/caete.toml

python py/caete_driver.py