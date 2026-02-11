# Slidev Template Repository

This repository contains multiple Slidev templates for easy reuse and sharing.

## Available Templates

- `filkom-ub-2026`
  - A Slidev template for FILKOM UB 2026 presentations.

## How to Use a Template

## Initial installation

- **Prerequisites:** Node.js (v16+), npm, and Git (optional).

1. Clone the repository:
   ```sh
   git clone https://github.com/rizalespe/slidev-template.git
   cd slidev-template
   ```

2. Run the template setup script (interactive):
   ```sh
   cd filkom-ub-2026
   bash setup-template.sh
   ```
   - The script will prompt for a target project directory (default: `../my-slidev-project`).
   - It will initialize a Slidev project if `package.json` is missing and install dependencies.

3. Run non-interactively by passing a target directory:
   ```sh
   bash setup-template.sh ../my-slidev-presentation
   ```

4. Show help:
   ```sh
   bash setup-template.sh --help
   ```

Note: If you get a permission error, use `bash setup-template.sh` or make it executable with `chmod +x setup-template.sh`.

## Adding More Templates

- Add a new folder for each template (e.g., `my-template`).
- Place a `setup-template.sh` script and all template files inside the folder.
- Update this README with the new template.

---

For more information about Slidev, visit [https://slidev.dev/](https://slidev.dev/)
