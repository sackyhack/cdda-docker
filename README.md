# Cataclysm-DDA DevContainer

## How to Start

1. Open this folder (`cdda-dev/`) in Visual Studio Code.
2. When prompted, select **"Reopen in Container"**.
3. Wait for the container to build (first time only).
4. Edit the code inside `/src` freely.
5. Press `Ctrl+Shift+B` to **build** the game (Tiles version by default).
6. Press `F5` to **launch** and **debug** the game inside the container.

## Extra

- Saves are stored in the `saves/` folder and are persistent across builds.
- To build a terminal-only (ASCII) version, run the "Build Terminal Only" task from the Task Runner.
- Modify build options in `.vscode/tasks.json` if needed.
- Modify launch behavior in `.vscode/launch.json`.

---

Enjoy developing and playing CDDA! 🚀
