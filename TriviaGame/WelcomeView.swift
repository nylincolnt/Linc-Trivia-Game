//
//  WelcomeView.swift
//  TriviaGame
//
//  Created by Lincoln Takudzwa Nyarambi on 10/12/24.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showQuiz = false
    @StateObject var viewModel = QuizViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                
                Text("Welcome to Lincoln's Brain Tease!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                
                Text("Select difficulty:")
                    .font(.headline)
                
                Picker("Difficulty", selection: $viewModel.difficultyLevel) {
                    Text("Easy").tag("Easy")
                    Text("Medium").tag("Medium")
                    Text("Hard").tag("Hard")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                NavigationLink(destination: TriviaGameView(viewModel: viewModel)) {
                    Text("Start Quiz")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Spacer()
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .top, endPoint: .bottom))
        }
    }
}
