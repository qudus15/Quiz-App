//
//  QuizView.swift
//  quiz
//
//  Created by Red Whale inc. on 10/12/2024.
//

import SwiftUI

struct Quiz1: View {
    
    //number of questions
    @State var i : Int = 0
    
    //var for the score
    @State var score = 0
    @State private var showActionSheet = false
    
    var body: some View {
        
        VStack(spacing: 15){
            
            if(self.i < myQuiz1.count){
                
                Image(myQuiz1[self.i].img!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 365, height: 265)
                
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 5)
                    }
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 1.5, x: 1, y:  1)
                
                Text(myQuiz1[self.i].text!)
                    .font(.system(size: 19, weight: .semibold, design: .monospaced))
                    .lineSpacing(7)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //answer 1
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 0)}) {
                    Text(myQuiz1[self.i].answer[0])
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                //answer 2
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 1)}) {
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                //answer 3
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 2)}) {
                    Text(myQuiz1[self.i].answer[2])
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                //answer 4
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 3)}) {
                    Text(myQuiz1[self.i].answer[3])
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold, design: .monospaced))
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
//                .actionSheet(isPresented: $showActionSheet) {
//                    ActionSheet(title: Text("Score"),
//                                message: Text("Score : \(self.score) / \(myQuiz1.count)"),
//                                buttons: [
//                                    .cancel{print(self.showActionSheet)}
//                                ]
//                    )
//                }
                
            } else {
                FinalView(score: self.score)
            }
            
        }
        .padding()
    }
    
    func buttonAction(n : Int){
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        
        self.i = self.i + 1
    }
}

#Preview {
    Quiz1()
}
