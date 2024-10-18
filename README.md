# Trivia Game

Welcome to the Trivia Game! This interactive quiz app is designed to test your knowledge across various topics while providing a fun and engaging experience. 

## Table of Contents

- [Features](#features)
- [Screens](#screens)
- [Architecture](#architecture)
- [Getting Started](#getting-started)
- [Requirements](#requirements)
- [How to Play](#how-to-play)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Features

- **Colorful and Aesthetic Design**: A welcoming interface with vibrant colors and playful elements.
- **Interactive Quiz**: Answer multiple-choice questions with instant feedback.
- **Score Tracking**: Keep track of your score as you progress through the questions.
- **Timer**: A countdown timer for each question adds a thrilling challenge.
- **Difficulty Selection**: Choose the quiz difficulty level to suit your preference.
- **Multiple Screens**: Seamless navigation between the Welcome Screen, Question Screen, and Score Screen.

## Screens

1. **Welcome Screen**: 
   - Title, instructions, and a fun introduction to the game.
   - A "Start" button to begin the quiz.

2. **Question Screen**: 
   - Displays the current question, associated image, and answer options.
   - Tracks the user’s score and moves to the next question after an answer is selected.

3. **Score Screen**: 
   - Displays the final score after all questions have been answered.
   - Buttons to restart the game or navigate back to the Welcome Screen.

## Architecture

This app is built using the Model-View-ViewModel (MVVM) architecture to separate game logic from the user interface.

- **Model**: Represents a single question with text, image, and answer options.
- **ViewModel**: Manages game state, tracks score, and handles the quiz logic.
- **View**: Comprises multiple SwiftUI views that make up the user interface, leveraging NavigationStack and NavigationLink for smooth transitions.

## Getting Started

To get started with the Trivia Game, follow these steps:

1. Clone the repository or download the zip file containing the project.
2. Open the project in Xcode.
3. Build and run the project on a simulator or a physical device.

## Requirements

- Xcode 14 or later
- iOS 15.0 or later
- Swift 5 or later

## How to Play

1. Launch the app.
2. Click on the "Start" button on the Welcome Screen.
3. Answer the questions presented in the quiz.
4. Your score will be updated after each question.
5. After the last question, view your final score on the Score Screen.
6. Use the buttons to restart the quiz or return to the Welcome Screen.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

- Inspired by various trivia games and educational apps.
- Special thanks to [Your Instructor's Name] for guidance and support throughout the development process.

Enjoy the game and good luck!
