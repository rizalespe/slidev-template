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
  echo -e "n" | (cd "$TARGET_DIR" && npm create slidev@latest . -- --yes --template none)
  echo "Installing npm dependencies..."
  (cd "$TARGET_DIR" && npm install)
fi


# 3. Copy template files to target directory (force overwrite)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Copying template files from $SCRIPT_DIR to $TARGET_DIR..."
cp -f "$SCRIPT_DIR/style.css" "$TARGET_DIR/style.css"
echo "  ✓ Copied style.css"
cp -f "$SCRIPT_DIR/slides.md" "$TARGET_DIR/slides.md"
echo "  ✓ Copied slides.md"
mkdir -p "$TARGET_DIR/public/images"
if [ -d "$SCRIPT_DIR/public/images" ]; then
  cp -Rf "$SCRIPT_DIR/public/images"/* "$TARGET_DIR/public/images/"
  echo "  ✓ Copied images"
fi

# 4. Optional: Copy Slidev config
if [ -f "$SCRIPT_DIR/slidev.config.ts" ]; then
  cp -f "$SCRIPT_DIR/slidev.config.ts" "$TARGET_DIR/slidev.config.ts"
  echo "  ✓ Copied slidev.config.ts"
fi

echo "Template setup complete! You can now run: cd $TARGET_DIR && npm run dev"
