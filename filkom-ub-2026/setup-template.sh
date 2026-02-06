#!/bin/bash
# Slidev FILKOM Template Setup Script
# Usage: bash setup-template.sh

#!/bin/bash
# Slidev FILKOM Template Setup Script
# Usage: bash setup-template.sh

set -e

# 1. Install dependencies in parent directory
if [ -f ../package.json ]; then
  echo "Installing npm dependencies in parent directory..."
  (cd .. && npm install)
else
  echo "No package.json found in parent directory. Please initialize your project with Slidev first."
  exit 1
fi

# 2. Copy template files to parent directory
cp -r style.css ../style.css
cp -r slides.md ../slides.md
mkdir -p ../public/images
cp -r images/* ../public/images/

# 3. Optional: Copy Slidev config
if [ -f slidev.config.ts ]; then
  cp slidev.config.ts ../slidev.config.ts
fi

echo "Template setup complete! You can now run: npm run dev in the parent directory."
