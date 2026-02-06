# Slidev Template Repository

This repository contains multiple Slidev templates for easy reuse and sharing.

## Available Templates

- `filkom-ub-2026`
  - A Slidev template for FILKOM UB 2026 presentations.

## How to Use a Template

1. **Clone this repository:**
   ```sh
   git clone https://github.com/rizalespe/slidev-template.git
   cd slidev-template
   ```

2. **Run the setup script:**
   ```sh
   cd filkom-ub-2026
   ./setup-template.sh
   ```
   If you see a "Permission denied" error, run:
   ```sh
   bash setup-template.sh
   ```
   Or make it executable first:
   ```sh
   chmod +x setup-template.sh
   ./setup-template.sh
   ```
   This will copy the template files to your chosen directory.

3. **Follow the instructions in the script to finish setup.**

> **Note:** Git does not always preserve executable permissions for scripts. Using `bash setup-template.sh` always works, even if the file is not marked as executable.

## Adding More Templates

- Add a new folder for each template (e.g., `my-template`).
- Place a `setup-template.sh` script and all template files inside the folder.
- Update this README with the new template.

---

For more information about Slidev, visit [https://slidev.dev/](https://slidev.dev/)
