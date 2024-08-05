# RhythmBox

---

RhythmBox is a Flutter-based mobile application that allows users to explore and customize sound sequences, metronomes, beat accents, and more. The application is designed to be intuitive and user-friendly, making it ideal for musicians and enthusiasts who need a versatile tool for managing rhythmic sequences and sound samples.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [App Structure](#app-structure)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview

RhythmBox provides a seamless way to interact with sound samples and sequences. Users can create, edit, and manage sound sequences with custom settings such as BPM (beats per minute), volume, and loop count. The app is structured around a robust navigation system using Flutter's `go_router` package, ensuring smooth transitions between different sections of the app.

## Features

- **Sound Samples**: Browse and manage a list of sound samples.
- **Metronome**: Customize and play a metronome with adjustable BPM and volume.
- **Beat Accents**: Create and edit beat accents with color and sound options.
- **Sequence Management**: Add, edit, and manage sequences with detailed specifications.
- **Responsive UI**: Designed with modular widgets for a clean and responsive interface.
- **Navigation**: Easy navigation through different app sections using a hamburger menu.

## Installation

To run the RhythmBox application locally, follow these steps:

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: Ensure Dart is installed with Flutter
- IDE: Visual Studio Code or Android Studio with Flutter plugin

### Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/rhythmbox.git
   cd rhythmbox
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the Application**
   ```bash
   flutter run
   ```

### Note
Ensure you have a connected device or emulator running to launch the application successfully.

## Usage

Once the application is up and running, you can explore various features:

1. **Sound Samples**
    - Navigate to the Sound Samples section to view and manage different sound files.
    - Add new sounds or edit existing ones.

2. **Metronome**
    - Adjust the BPM and volume to use the metronome feature for practice or composition.
    - Choose from a list of sounds to customize your metronome beat.

3. **Beat Accents**
    - Explore the Beat Accent section to add dynamic accents to your rhythms.
    - Customize each accent with colors and different sounds.

4. **Sequence Management**
    - Create and edit sequences with a detailed view of each segment.
    - Set loop counts, adjust volume, and configure other specifications.

## App Structure

Here's an overview of the project's folder structure:

```plaintext
lib/
├── main.dart                   # Entry point of the application
├── theme.dart                  # Theme configuration file
├── app_router.dart             # App routing configuration using go_router
├── widgets/
│   └── custom_app_bar.dart     # Custom AppBar with hamburger menu
└── screens/
    ├── sound_sample_list.dart  # Screen for listing sound samples
    ├── sequences/
    │   ├── sequence_list.dart  # Screen for managing sequences
    │   ├── sequence_specification.dart # Screen for sequence details
    │   └── sequence_widgets.dart       # Widgets for sequence screen
    ├── meter_list.dart         # Screen for listing meters
    ├── beat_accent_list.dart   # Screen for managing beat accents
    ├── metronome.dart          # Screen for metronome settings
    ├── login.dart              # Login screen
    ├── sound_sample_specification.dart # Screen for sound sample details
    └── beat_accent_specification.dart  # Screen for beat accent details
```

## Contributing

Contributions are welcome! Here's how you can get involved:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes.
4. Push to the branch.
5. Open a Pull Request.

Please ensure your code follows the project's coding standards and includes appropriate documentation and tests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries or feedback, feel free to contact:

- **Name:** P. Konstantinos Kakkavas
- **Email:** kostiskak@gmail.com
- **GitHub:** [ElGreKost](https://github.com/ElGreKost)
