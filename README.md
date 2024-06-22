# Slash App - Responsive Home Screen

## Table of Contents
- [Introduction](#introduction)
- [Objective](#objective)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [APK Download](#apk-download)
- [Contact](#contact)

## Introduction
This repository contains the code for the internship task assigned by Slash. The objective of this project is to develop a responsive UI for the Home Screen of the Slash App that adapts seamlessly to both mobile and web platforms, based on the provided Figma design and dummy data.

## Objective
- Implement a responsive Home Screen for the Slash App.
- Follow clean architecture principles and use the MVVM pattern with Cubit for state management.

## Features
- Responsive design for both mobile and web platforms.
- Clean architecture following the MVVM pattern.
- State management using Cubit.
- Consistent design as per the provided Figma design.
- Fetch and display data from provided dummy data.

## Technologies Used
- **Framework:** Flutter
- **State Management:** Cubit
- **Architecture:** Clean architecture, MVVM pattern

## Setup and Installation
To run this project locally, follow these steps:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/Waheed-Ashraf/Slash-Internship-Task.git
    cd Slash-Internship-Task
    ```

2. **Install dependencies:**
    ```bash
    flutter pub get
    ```

3. **Run the app:**
    - For mobile:
      ```bash
      flutter run
      ```
    - For web:
      ```bash
      flutter run -d chrome
      ```

## Usage
the app runs without errors on both mobile and web platforms. The Home Screen adapts its layout based on the screen size, utilizing appropriate widgets for each platform.

### Endpoints
- Fetch and display data using dummy data provided in the repository.

## Project Structure
```plaintext
Slash-Internship-Task/
├── lib/
│   ├── core/
│   │   ├── utils/
│   │   └── services/
│   ├── home/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── use_cases/
│   │   ├── presentation/
│   │   │   ├── view_models/
│   │   │   ├── widgets/
│   │   │   └── views/
│   └── main.dart
├── test/
├── .gitignore
├── pubspec.yaml
└── README.md

├── test/
├── .gitignore
├── pubspec.yaml
└── README.md
```
##APK Download

You can download the APK file for the Slash App from the following link:

[Slash App APK Download](https://drive.google.com/file/d/10E8iy7iffGEFuXXocpFRMtLfJiEhST4N/view?usp=drive_link)

##Contact

For any questions or suggestions, feel free to contact me:

Email: washraf124@gmail.com
LinkedIn: [Waheed Ashraf](https://www.linkedin.com/in/waheed-ashraf-18a197214/)


