# VoteringsPortalen: Mobile Application

## Project Overview

VoteringsPortalen is a mobile application, built using Flutter. It serves as a comprehensive platform for accessing crucial voting information from the Swedish Riksdag. Users can easily stay informed about parliamentary proceedings, track votes, and delve into analysis of legislative decisions. With a user-friendly interface and seamless navigation, VoteringsPortalen empowers citizens with vital insights into the democratic process of Sweden's legislative body, facilitating informed participation and engagement in political affairs

In this repository, you'll find the codebase for a mobile application designed to provide users with access to crucial voting information from the Swedish parliament.

## Purpose

The primary aim of this application is to enhance political transparency. It serves as a tool to showcase past and upcoming votes, providing a comprehensive view of legislative activities. By offering insights into what has been voted on and what is scheduled for the future, the app aims to contribute to a better understanding of political processes and outcomes.

## Installation

1. Clone the repository: `git clone https://github.com/LudwigJL/voteringsportalen`
2. Navigate to the project directory: `cd voteringsportalen`
3. Set up flutter in Visual Studio Code:
   For detailed instructions on installing Flutter and setting up your development environment, please refer to the official [Flutter Installation Guide](https://flutter.dev/docs/get-started/install).

## Running the Application

For optimal testing and development, it is recommended to execute the application within a chosen Simulator or Emulator. This ensures a comprehensive evaluation of the application's functionality in a controlled environment.

To initiate the application:

1. **Open the Project in Visual Studio Code:**

   - Launch Visual Studio Code.
   - Open the project by navigating to the project directory.

2. **Prepare Simulator or Emulator:**

   - Launch your preferred Simulator or Emulator.
   - Ensure the device is connected; you can verify this in the bottom right corner of Visual Studio Code.

3. **Run the Application:**

   - In Visual Studio Code, either:
     - Click the "Run" button.
     - Or, run the following command in the terminal:

   ```bash
   flutter run
   ```

# Installing the Application on a Physical Device

After successfully running the application in a Simulator or Emulator, you may want to install it on a physical device for real-world testing. Follow these steps:

1. **Build the Application:**

   - Open a terminal in Visual Studio Code.
   - Run the following command to build the application:

   ```bash
   flutter build apk  # For Android
   # or
   flutter build ios  # For iOS
   ```

   This command generates the necessary build files for your target platform.

2. **Connect Your Device:**

   - Ensure your physical device is connected to your computer via USB.

3. **Check Device Connection in Visual Studio Code:**

   - Look for your connected device in the bottom right corner of Visual Studio Code. You should see the device name.

4. **Install the Application:**

   - Run the following command to install the application on your connected device:

   ```bash
   flutter install
   ```

   This will install the application on your connected device.

Now, you can launch the application directly from your device and conduct real-world testing.

For additional information and troubleshooting, refer to the [Flutter documentation](https://flutter.dev/docs/get-started/install) or your platform-specific guidelines.
`
