//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Ali Ahmadian shalchi on 13/08/2020.
//  Copyright © 2020 Ali Ahmadian shalchi. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()

        calculatePersonalityResults()
        navigationItem.hidesBackButton = true 
        
    }
    
    func calculatePersonalityResults() {
        var frecuencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            let newCount: Int
            
            if let oldCount = frecuencyOfAnswers[response] {
                newCount = oldCount + 1
            } else {
                newCount = 1
            }
            
            frecuencyOfAnswers[response] = newCount
            
            
        }
        
        let mostCommonAnswer = frecuencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    


}
