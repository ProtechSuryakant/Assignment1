# Flutter Project Setup

## Introduction
This repository contains a Flutter project with basic setup and configurations to kickstart your Flutter development.

## Prerequisites
Before you start, make sure you have the following installed on your system:
- Flutter SDK (follow the official Flutter installation guide: [Flutter Install](https://flutter.dev/docs/get-started/install),)
- Set SDK bin path in Environment Variable 
- Open CMD Write a Command : flutter Doctor 
    Then will show following steps:
        C:\Users\Surya>flutter doctor
        Doctor summary (to see all details, run flutter doctor -v):
        [√] Flutter (Channel stable, 3.10.6, on Microsoft Windows [Version 10.0.22621.2070], locale en-IN)
        [√] Windows Version (Installed version of Windows is version 10 or higher)
        [√] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
        [√] Chrome - develop for the web
        [X] Visual Studio - develop for Windows
            X Visual Studio not installed; this is necessary for Windows development.
            Download at https://visualstudio.microsoft.com/downloads/.
            Please install the "Desktop development with C++" workload, including all of its default components
        [√] Android Studio (version 2022.2)
        [√] VS Code (version 1.81.0)
        [√] Connected device (4 available)
        [√] Network resources

        ! Doctor found issues in 1 category.


    In case any step showing this step like this :
        [X] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
            - Then open Android Studio
            - Go to file->Setting->Android SDK->SDK TOOl-> Checked Android Studio Command line-Tools->Apply and Ok
              Again Check flutter doctor on cmd everything will be ok
    
    And ignore this step (This procedure for Desktop application)
        [X] Visual Studio - develop for Windows
            X Visual Studio not installed; this is necessary for Windows development.
            Download at https://visualstudio.microsoft.com/downloads/.
            Please install the "Desktop development with C++" workload, including all of its default components
 
- VS Code
- Android Studio or IntelliJ IDEA (for Android development)
- Xcode (for iOS development on macOS)

## Getting Started
1. Clone the repository:
```
git clone https://github.com/your-username/Assignment1.git
cd Assignment1
```

2. Install dependencies:
```
flutter pub get
```

3. Run the app: (You have to install android emulator with API 33)
```
flutter run
```

## Project Structure
The project structure follows a standard Flutter project layout:

```
flutter-project/
  ├── android/
  ├── ios/
  ├── lib/
  ├── test/
  ├── assets/
  ├── pubspec.yaml
  └── ...
```

- `android/` and `ios/`: Native code for Android and iOS platforms respectively.
- `lib/`: Contains the Dart source code for the Flutter app.
- `test/`: Contains unit and widget tests.
- `assets/`: Contains static assets such as images, fonts, etc.
- `pubspec.yaml`: The configuration file for the Flutter project.

## Acknowledgments
We would like to acknowledge the following resources that helped us in setting up this project:
- [Flutter Documentation](https://flutter.dev/docs)
- [Flutter Community](https://flutter.dev/community)
- [Flutter Pub](https://pub.dev/)

# This project include feature
- Splash Screen
- On Boarding Screen 

    # For Credentials
    - Login
    - Sign Up
    - Forgot Password
- Home

# Final Submission update in project
- Add Drawer menu
- Perfect crop image in Carousel Slider
- Add Toast Message on click
    - App Bar Icons
    - Category Items
    


Happy Fluttering!