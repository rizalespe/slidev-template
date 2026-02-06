#!/bin/bash
# Slidev FILKOM Template Setup Script
# Usage: bash setup-template.sh


#!/bin/bash
# Slidev FILKOM Template Setup Script
# Usage: bash setup-template.sh [target-directory]

set -e

TARGET_DIR="${1:-../my-slidev-project}"

echo "Using target directory: $TARGET_DIR"

# 1. Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# 2. Ensure Slidev project in target directory
if [ -f "$TARGET_DIR/package.json" ]; then
  echo "Installing npm dependencies in $TARGET_DIR..."
  (cd "$TARGET_DIR" && npm install)
else
  echo "No package.json found in $TARGET_DIR. Initializing Slidev project..."
  (cd "$TARGET_DIR" && npm create slidev@latest . -- --yes --template none)
fi

# 3. Copy template files to target directory
cp -r style.css "$TARGET_DIR/style.css"
cp -r slides.md "$TARGET_DIR/slides.md"
mkdir -p "$TARGET_DIR/public/images"
if [ -d images ]; then
  cp -r images/* "$TARGET_DIR/public/images/"
fi

# 4. Optional: Copy Slidev config
if [ -f slidev.config.ts ]; then
  cp slidev.config.ts "$TARGET_DIR/slidev.config.ts"
fi

echo "Template setup complete! You can now run: cd $TARGET_DIR && npm run dev"
