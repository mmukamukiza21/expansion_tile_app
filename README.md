Expandable tiles are Flutter widgets that have a dynamic height.Expandable tiles are widgets with dynamic height in Flutter.

## About the Project

Student Hub FAQ is a simple flutter app to showcase the use of the ExpansionTile widget.

The app presents commonly asked questions about a student program. When users tap a question, they will open the question and read the answer. The app also has three switches to adjust various settings of the `ExpansionTile` widget and observe the changes to the user interface.

## Objectives

The main objectives of this project are to:

Understand Flutter "ExpansionTile" widget.
- Display questions and answers in an organised way.
- Enable users to open/close questions.
Know the impact of modifying widgets' properties.
- Experience developing an interactive interface using Flutter.

## Features

Provides answers to common questions about a student program.
- Supports expansion and contraction of questions, showing/hiding answers.
- Has a colourful header.
- Contains three switches to which to set the properties of the `ExpansionTile`.
- Organises content using cards and list layout.

## Three Properties Demonstrated

### 1. `initiallyExpanded`

At the time of the initial appearance of a question, this property sets whether the question is open or closed.

- `true`: The question is open at the beginning.
- `false`: When question is closed at the beginning.

The switch in this project is used to set the initial state of the questions.

### 2. `backgroundColor`

This property sets the background colour of an expanded tile.

If enabled, the expanded tile will be light teal in color.
- If disabled, no custom background colour is applied.

This can help show how background colour works to alter the appearance of a widget.

### 3. `controlAffinity`

This property determines the placement of the arrow to expand/collapse a tile.

ListTileControlAffinity.leading: The arrow is on the left.
- `ListTileControlAffinity.trailing`: The arrow is on the right side.

Users can move the arrow's position and then compare both options using the switch.

## Technologies Used

Flutter: A framework for creating a user interface for the application.
- Dart: Programming language that the application is developed in.
- Material Design: Offers widgets and design elements for the app.

## Requirements

This project requires the following:

- Flutter sdk installed in your computer.
- Android Studio or Visual Studio Code.
- Android emulator or an attached android mobile phone.
- Cloned the repository using Git.

## How to Run the Project

### 1. Clone the repository

Open a terminal and type in:

```bash
git clone https://github.com/mmukamukiza21/expansion_tile_app.git
```

### 2. Open project folder.

```bash
cd expansion_tile_app
```

### 3. Install the dependencies

```bash
flutter pub get
```

### 4. Verify all devices are plugged in.Inspect all devices for connections.

Switch to your Android emulator or to your Android phone and run the following:

```bash
flutter devices
```

### 5. Run the application

```bash
flutter run
```

## What I Learned

During the course of this project I discovered how to use the widget `ExpansionTile` to show questions and answers that can be opened and closed by users. I also got to know how the initial expansion, background colour, and control affinity properties impact the widget.

I used other widgets such as `StatefulWidget, SwitchListTile, Card, Container, ListView. This project was an opportunity for me to learn how to make an easy interface more interactive and user friendly.

## Screenshot

## Screenshot

[Click here to view the screenshot directly](expansion_tile_demo.jpg)

## Author

Milliam Mukamukiza

## GitHub Repository

Check out the Student Hub FAQ project on GitHub: https://github.com/mmukamukiza21/expansion_tile_app
