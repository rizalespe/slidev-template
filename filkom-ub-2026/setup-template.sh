#!/bin/bash
# Slidev FILKOM Template Setup Script
# Usage: bash setup-template.sh

set -e

set -e
if [ -f package.json ]; then
  echo "Installing npm dependencies..."
if [ -f ../package.json ]; then
else
  (cd .. && npm install)
  exit 1
fi

# 2. Copy template files
TEMPLATE_DIR="template-files"

cp -r style.css ../style.css
cp -r slides.md ../slides.md
mkdir -p ../public/images
cp -r images/* ../public/images/
if [ -f $TEMPLATE_DIR/slidev.config.ts ]; then
  cp $TEMPLATE_DIR/slidev.config.ts ./slidev.config.ts
if [ -f slidev.config.ts ]; then
  cp slidev.config.ts ../slidev.config.ts
echo "Template setup complete! You can now run: npm run dev"

echo "Template setup complete! You can now run: npm run dev in the parent directory."
if [ -f $TEMPLATE_DIR/slidev.config.ts ]; then
