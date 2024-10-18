//
//  QuizViewModel.swift
//  TriviaGame
//
//  Created by Lincoln Takudzwa Nyarambi on 10/17/24.
//

import SwiftUI

class QuizViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var score = 0
    @Published var timeRemaining = 10
    @Published var difficultyLevel = "Easy"
    @Published var gameOver = false
    
    var timer: Timer?

    let questions: [Question] = [
        Question(text: "What is the capital of France?", image: "building.2", options: ["Berlin", "Paris", "Rome", "London"], correctAnswer: "Paris"),
        Question(text: "Which planet is known as the Red Planet?", image: "globe.europe.africa", options: ["Mars", "Jupiter", "Venus", "Saturn"], correctAnswer: "Mars"),
        Question(text: "Who wrote 'Hamlet'?", image: "book.fill", options: ["Shakespeare", "Tolkien", "Hemingway", "Orwell"], correctAnswer: "Shakespeare"),
        Question(text: "What is the smallest prime number?", image: "number", options: ["1", "2", "3", "5"], correctAnswer: "2"),
        Question(text: "Which element has the atomic number 1?", image: "flame.fill", options: ["Oxygen", "Carbon", "Hydrogen", "Nitrogen"], correctAnswer: "Hydrogen"),
        Question(text: "In what year did the Titanic sink?", image: "waveform.path.ecg", options: ["1905", "1912", "1914", "1918"], correctAnswer: "1912"),
        Question(text: "What is the square root of 64?", image: "function", options: ["6", "7", "8", "9"], correctAnswer: "8"),
        Question(text: "Which country is home to the kangaroo?", image: "hare.fill", options: ["Australia", "South Africa", "Brazil", "India"], correctAnswer: "Australia"),
        Question(text: "What is the largest ocean?", image: "drop.fill", options: ["Atlantic", "Indian", "Pacific", "Arctic"], correctAnswer: "Pacific"),
        Question(text: "What is the hardest natural substance on Earth?", image: "diamond", options: ["Gold", "Iron", "Diamond", "Graphite"], correctAnswer: "Diamond"),
        Question(text: "Who painted the Mona Lisa?", image: "paintbrush.fill", options: ["Van Gogh", "Michelangelo", "Da Vinci", "Picasso"], correctAnswer: "Da Vinci"),
        Question(text: "Which country hosted the 2016 Summer Olympics?", image: "sportscourt.fill", options: ["China", "Brazil", "Russia", "Japan"], correctAnswer: "Brazil"),
        Question(text: "What is the chemical symbol for water?", image: "drop.fill", options: ["CO2", "H2O", "O2", "N2"], correctAnswer: "H2O"),
        Question(text: "Which planet is closest to the sun?", image: "sun.max.fill", options: ["Venus", "Mercury", "Earth", "Mars"], correctAnswer: "Mercury"),
        Question(text: "In which year did World War II end?", image: "shield.fill", options: ["1941", "1945", "1948", "1950"], correctAnswer: "1945")
    ]
    
    func checkAnswer(_ answer: String) {
        if answer == questions[currentQuestionIndex].correctAnswer {
            score += 1
        }
        nextQuestion()
    }

    func nextQuestion() {
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
            resetTimer()
        } else {
            gameOver = true
            timer?.invalidate()
        }
    }

    func resetGame() {
        currentQuestionIndex = 0
        score = 0
        gameOver = false
        resetTimer()
    }

    func resetTimer() {
        timeRemaining = 10
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            self?.timeTick()
        }
    }

    func timeTick() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            nextQuestion()
        }
    }
}
