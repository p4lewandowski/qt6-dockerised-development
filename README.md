# README.md

## Introduction

This project uses Docker and Visual Studio Code's Dev Containers to provide an isolated, consistent and reproducible development environment. This approach ensures the application behaves the same way on every developer's machine, eliminating the "It works on my machine" syndrome. In this project, we are using a Qt6 App that is built with Docker and displayed using Xserver.

## Files Overview

### devcontainer.json

The `devcontainer.json` file is a configuration file that determines how your dev container gets built and started. It's located in the `.devcontainer` directory of your project. 

In this project, the `devcontainer.json` file specifies the Docker image to be used (`stateoftheartio/qt6:6.6-gcc-aqt`), the ports to be forwarded (`8080`), the VS Code settings and extensions to be used in the container, and additional arguments to be passed to Docker at runtime. It also specifies commands to be run after the container is created and the environment variables for the container.

### tasks.json

The `tasks.json` file is located in the `.vscode` directory and provides configurations for tasks to be run in the VS Code environment. In this project, a task named `CMakeBuild` is defined, which runs a shell command to build the application using CMake.

### launch.json

The `launch.json` file, also located in the `.vscode` directory, specifies configurations for launching and debugging applications in VS Code. In this project, a configuration named `Run App` is defined, which launches the application for debugging using the `cppdbg` debugger type. It specifies the program to be debugged, the current working directory, and the pre-launch task to be run (`CMakeBuild`).

## How to Use

1. Make sure Docker and Visual Studio Code are installed on your machine.
2. Clone this repository.
3. Open the project folder in Visual Studio Code.
4. When prompted, click on "Reopen in Container". This will build the Docker container as specified in the `devcontainer.json` file and open the project inside the container.
5. Run the `xhost +local:docker` command in your host machine's terminal to enable Xserver for display.

In Visual Studio Code, you can run tasks with the `Terminal > Run Build Task` menu or `Ctrl+Shift+B` shortcut. This will show a dropdown of tasks defined in `tasks.json`. Select a task to run it. In this project, the `CMakeBuild` task is defined as the default build task, so it will run when you use the `Run Build Task` command or shortcut.

To run the application, you can use the `Run > Start Debugging` menu or `F5` shortcut. This will start the `Run App` configuration defined in `launch.json`, which launches the application for debugging and runs the `CMakeBuild` pre-launch task.

## Additional Information

This project uses a series of VS Code extensions for a better development experience. These extensions include those for QML formatting, CMake, Prettier, Python, Docker, YAML, and others. They are automatically installed in the Docker container when it is created.

It is important to note that this project uses Docker and Xserver for display, which means your application's UI will be displayed on your host machine while being run inside the Docker container. This requires running the `xhost +local:docker` command on your host machine to enable Xserver to accept connections from the Docker container.

Please make sure to update the Docker image, settings, extensions, and other configurations in `devcontainer.json`, `tasks.json` and `launch.json` to match your specific project requirements.