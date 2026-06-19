# Liquid Database

An open-source desktop application built with **Xojo** designed for vapers who want to manage their DIY e-liquids, flavors, bases, and vendors in one centralized place. It features a built-in recipe calculator and a PDF export function to keep your physical mixing station organized.

The application is fully cross-platform and runs natively on **macOS**. It should also run natively on **Windows** and **Linux**, but i've not tested it.

> **Note on Language:** The user interface dynamically supports multiple languages (including English and German). The screenshots below showcase the German localization.

---

## Features

### 🧪 Liquid Management & Recipes
Create and manage your final e-liquid recipes. The application allows you to combine your stored flavors and bases and set specific ratios.
* Track custom flavor percentages and target nicotine strengths.
* Rate your final creations with a visual star-rating system.
* Add detailed descriptions, steep times, and vendor references.

![Liquids Screen](/git_pics/screenshot_liquids.png)

---

### 🧮 Integrated Recipe Calculator
The built-in calculator takes the guesswork out of mixing. Enter your base nicotine levels, target values, total volume, and flavor percentages to get exact measurements instantly.
* Calculation of required PG/VG components (with or without nicotine).
* Optional water percentage inclusion.
* One-click PDF generation to save or print your recipes.

![Calculator Screen](/git_pics/screenshot_calculator.png)

---

### 🍓 Flavor Profile Directory
Keep a detailed inventory of your single flavor concentrates.
* Store recommended mixing percentages and required steeping times.
* Maintain an active stock count (e.g., number of bottles in storage).
* Rate individual flavors to remember which ones work best for your palate.

![Flavors Screen](/git_pics/screenshot_flavors.png)

---

### 💧 Bases & Nicotine Shots
Manage your base liquids (PG/VG ratios) and nicotine strengths to ensure your calculations are always accurate.
* Custom definition of PG / VG / Water ratios (e.g., 70/30, 50/50).
* Track stock levels with customizable units.

![Bases Screen](/git_pics/screenshot_bases.png)

---

### 📦 Storage & Vendor Management
* **Inventory Overview:** A dedicated "Lager" (Storage) view gives you a quick bird's-eye view of all components currently in stock. Double-clicking an item takes you straight to its details.
* **Vendor Directory:** Keep track of your favorite vape shops, customer IDs, order URLs, and notes.

| Storage Overview | Vendor Directory |
|---|---|
| ![Storage Screen](/git_pics/screenshot_storage.png) | ![Dealers Screen](/git_pics/screenshot_dealers.png) |

---

### ⚙️ Database Connectivity
By default, the application runs on a local database structure. However, it includes built-in support for a centralized **MySQL Server**, allowing you to sync your inventory across multiple devices in your network.

![Settings Screen](/git_pics/screenshot_settings.png)

---

## Technical Details

* **Framework:** Xojo (API 2.x)
* **Platforms:** macOS, Windows, Linux (Native compilation)
* **Database Support:** SQLite (Local) / MySQL (Remote)

---

## License

This project is open-source and available under the [MIT License](LICENSE).

---
<p align="center">
  <sub><i>This README.md was drafted with the assistance of Gemini, because i am not a native english speaker. The application itself was written entirely and independently by myself, without the use of LLM's.</i><sub>
</p>
