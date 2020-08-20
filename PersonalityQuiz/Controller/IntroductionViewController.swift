//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Ali Ahmadian shalchi on 13/08/2020.
//  Copyright © 2020 Ali Ahmadian shalchi. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToQuestions", sender: self)
    }
    
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }
    
}

