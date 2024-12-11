//
//  quizModel.swift
//  quiz
//
//  Created by Red Whale inc. on 10/11/2024.
//

import Foundation
struct QuizModel {
    var img : String?
    var text : String?
    var answer : [String]
    
    var correct : Int?
}

var myQuiz1 : [QuizModel] = [
    QuizModel(img: "imageQuestion1",
              text: "Which football club is the most successful in history?",
              answer: ["Manchester United", "Real Madrid", "Barcelona", "Manchester City"],
              correct: 1),
    
    QuizModel(img: "imageQuestion2",
              text: "What province in Canada has the largest population?",
              answer: ["Quebec", "New Foundland", "Manitoba", "Ontario"],
              correct: 3),
    
    QuizModel(img: "imageQuestion3",
              text: "Which planet is known as the Red Planet?",
              answer: ["Venus", "Jupiter", "Mars", "Saturn"],
              correct: 2),
    
    QuizModel(img: "imageQuestion4",
              text: "Who wrote the play Romeo and Juliet?",
              answer: ["Charles Dickens", "William Shakespeare", "J.K. Rowling", "George Orwell"],
              correct: 1),
    
    QuizModel(img: "imageQuestion5",
              text: "What is the largest mammal in the world?",
              answer: ["Elephant", "Great White Shark", "Blue Whale", "Giraffe"],
              correct: 2),
]

func SaveScore(quiz : String, score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
