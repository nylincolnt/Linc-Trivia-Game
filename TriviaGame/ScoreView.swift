//
//  ScoreView.swift
//  TriviaGame
//
//  Created by Lincoln Takudzwa Nyarambi on 10/12/24.
//

import SwiftUI

struct ScoreView: View {
    @ObservedObject var viewModel: QuizViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Your Score: \(viewModel.score) / \(viewModel.questions.count)")
                .font(.largeTitle)
                .padding()

            Button(action: {
                viewModel.resetGame()
            }) {
                Text("Restart Game")
                    .font(.title)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            NavigationLink(destination: WelcomeView()) {
                Text("Back to Welcome")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.yellow, .pink]), startPoint: .top, endPoint: .bottom))
    }
}
