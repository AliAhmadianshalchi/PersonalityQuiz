//
//  QuestionsData.swift
//  PersonalityQuiz
//
//  Created by Ali Ahmadian shalchi on 13/08/2020.
//  Copyright © 2020 Ali Ahmadian shalchi. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single,multiple,ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    
    case dog = "🐶" , cat = "🐱" , rabbit = "🐰" , turtle = "🐢"
    
    var definition: String {
        
        switch self {
        case .dog:
            return "Several potential personality traits have been identified in dogs, for instance Playfulness, Curiosity/Fearlessness,Chase-proneness, Sociability and Aggressiveness and Shyness–Boldness. ... Sociability (initiating friendly interactions with people and other dogs)"
        case .cat:
            return "Agreeableness traits include affectionateness, friendliness to people, and gentleness. Extraversion traits include being active, vigilant, curious, inquisitive, inventive, and smart. The personality of an individual cat is determined by where the animal exists along each factor's continuum, between low and high scores."
        case .rabbit:
            return "Rabbit is a tame and tender animal, and swift in move. People born in the Year of the Rabbit usually have soft and tender personality traits. They keep a modest attitude and maintain a pleasant relationship to people around. They will not be irritated easily, and they also avoid quarrels as much as possible."
        case .turtle:
            return "There are some personality characteristics that are common to all turtles and tortoises. They are quiet, shy, and harmless yet display intelligence. They can identify their keepers and know when it's feeding time. Turtles and tortoises are very sensitive to loud noises, vibrations, and sudden bright lights."
        }
    }
}
