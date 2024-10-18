//
//  TriviaGameView.swift
//  TriviaGame
//
//  Created by Lincoln Takudzwa Nyarambi on 10/12/24.
//

import SwiftUI

struct TriviaGameView: View {
    @ObservedObject var viewModel: QuizViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Time Remaining: \(viewModel.timeRemaining)")
                .font(.headline)
                .foregroundColor(.red)
                .onAppear {
                    viewModel.resetTimer()
                }

            Text(viewModel.questions[viewModel.currentQuestionIndex].text)
                .font(.title)
                .multilineTextAlignment(.center)
            
            Image(systemName: viewModel.questions[viewModel.currentQuestionIndex].image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            ForEach(viewModel.questions[viewModel.currentQuestionIndex].options, id: \.self) { option in
                Button(action: {
                    viewModel.checkAnswer(option)
                }) {
                    Text(option)
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }

            Spacer()

            if viewModel.gameOver {
                NavigationLink(destination: ScoreView(viewModel: viewModel)) {
                    Text("View Score")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom))
    }
}
