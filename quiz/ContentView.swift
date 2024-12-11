//
//  ContentView.swift
//  quiz
//
//  Created by Qudus on 10/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State private var scaleEffect = 1.0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                
                Image(systemName: "playstation.logo")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .font(.system(size: 45))
            
                Text("Quizzerr")
                    .font(.system(size: 24, weight: .medium, design: .monospaced))
                
                Spacer()
                
                NavigationLink(destination: Quiz1()) {
                    HStack{
                        Image(systemName: "restart.circle.fill")
                        Text("Start")
                            .font(.system(size: 22, weight: .bold, design: .monospaced))
                    }
                    .symbolEffect(.bounce)
                    .frame(width: 135, height: 45)
                    .background(Color.red)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 3)
                    }
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 1, x: 0, y: 2)
                }
                .foregroundColor(.white)
                
            }
            .padding()
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.red)
    }
}

#Preview {
    ContentView()
}
