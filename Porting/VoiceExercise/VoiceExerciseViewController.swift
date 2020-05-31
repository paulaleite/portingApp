//
//  VoiceExerciseViewController.swift
//  Porting
//
//  Created by Felipe Petersen on 26/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit
import AVFoundation

class VoiceExerciseViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var selectionView: SelectionView!
    
    var audio: Audio?
    lazy var audioPlayer: AudioPlayer? = {
        guard let audio = audio else { return nil }
        return AudioPlayer(named: audio.nomeAudio)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = audio?.titulo
        self.questionLabel.text = audio?.pergunta
        
        if let respostas = audio?.respostas, let correctAnswerIndex = audio?.indiceRespostaCorreta {
            self.selectionView.setupTexts(answers: respostas)
            self.selectionView.correctAnswerIndex = correctAnswerIndex
        }
    }
    
    
    @IBAction func didTapPlayAudio(_ sender: Any) {
        guard let audioPlayer = audioPlayer else { return }
        audioPlayer.playSound()
    }
    
}
