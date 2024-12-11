//
//  FinalView.swift
//  quiz
//
//  Created by Red Whale inc. on 10/12/2024.
//

import SwiftUI

struct FinalView: View {
    
    var score : Int
    
    var body: some View {
        VStack(spacing: 15){
            
            HStack{
                Image("hooray")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 70)
                
            }
            
            Spacer()
            
            Image(systemName: "medal.star.fill")
                .foregroundColor(.red)
                .font(.system(size: 80))
                .symbolEffect(.bounce)
            Text("Your final score is: ")
                .font(.system(size: 22, weight: .bold, design: .monospaced))
            Text ("\(score)/5")
                .onAppear(){
                    SaveScore(quiz: "myQuiz1", score: self.score)
                }
                .font(.system(size: 50, weight: .bold, design: .monospaced))
            
            Spacer()
            
        }
            
    }
}

#Preview {
    FinalView(score: 1)
}
