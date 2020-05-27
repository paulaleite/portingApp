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
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let ditado1 = Ditado(titulo: "Água mole, pedra dura, tanto bate até que fura", descricao: "Esse ditado quer dizer que, com persistência, você será capaz de alcançar seus objetivos. Que mesmo que algo seja difícil e você não consiga de primeira, basta se esforçar e não desistir que uma hora você irá conseguir.", traducao: "This saying means that, with persistence, you will be able to achieve your goals. That even if something is difficult and you don't get it at first, just try and not give up that one hour you will achieve.", pergunta: "In which of these situations does this saying work the best?", respostas: ["Give up on your first try.", "I wanted a job but didn't get it, so I gave up.", "Drawing is really hard for me, but I've slowly gotten better after 2 years.", "My father build his company because I'm lucky, so I'm going after that."], indiceRespostaCorreta: 2)
        
        self.titleLabel.text = "Água mole, pedra dura, tanto bate até que fura"
        self.descPortLabel.text =  "Esse ditado quer dizer que, com persistência, você será capaz de alcançar seus objetivos. Que mesmo que algo seja difícil e você não consiga de primeira, basta se esforçar e não desistir que uma hora você irá conseguir. Esse ditado quer dizer que, com persistência, você será capaz de alcançar seus objetivos. Que mesmo que algo seja difícil e você não consiga de primeira, basta se esforçar e não desistir que uma hora você irá conseguir. Esse ditado quer dizer que, com persistência, você será capaz de alcançar seus objetivos. Que mesmo que algo seja difícil e você não consiga de primeira, basta se esforçar e não desistir que uma hora você irá conseguir."
        self.desEngLabel.text = "This saying means that, with persistence, you will be able to achieve your goals. That even if something is difficult and you don't get it at first, just try and not give up that one hour you will achieve."
        self.questionLabel.text = "In which of these situations does this saying work the best?"
    }
    
}
