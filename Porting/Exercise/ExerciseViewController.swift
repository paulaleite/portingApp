//
//  ExerciseViewController.swift
//  Porting
//
//  Created by Felipe Petersen on 22/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
  
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descPortLabel: UILabel!
    @IBOutlet weak var desEngLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var selectionView: SelectionView!
    
    var ditado: Ditado?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = ditado?.titulo
        self.descPortLabel.text = ditado?.descricao
        self.desEngLabel.text = ditado?.traducao
        self.questionLabel.text = ditado?.pergunta
        if let respostas = ditado?.respostas, let correctAnswerIndex = ditado?.indiceRespostaCorreta {
            self.selectionView.setupTexts(answers: respostas)
            self.selectionView.correctAnswerIndex = correctAnswerIndex
        }

    }
    
}
