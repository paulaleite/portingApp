//
//  SelectionView.swift
//  Porting
//
//  Created by Felipe Petersen on 22/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class SelectionView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var selectionButtons: [UIButton]!
    @IBOutlet var selectionLabels: [UILabel]!
    
    var texts = ["teste 1", "teste2", "teste 3", "teste 4"]
    var selectedQuestion: Int?
    var correctAnswerIndex = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
//        setupTexts()
        setupButtons()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SelectionView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func setupTexts(answers: [String]) {
        for i in selectionLabels!.indices {
            selectionLabels[i].text = answers[i]
        }
    }
    
    func setupButtons() {
        for (index, button) in selectionButtons.enumerated() {
            button.tag = index
        }
        setupSelected()
    }
    
    func setupSelected() {
        for button in selectionButtons {
            if button.isSelected {
                button.titleLabel?.text = "Selected"
            } else {
                button.titleLabel?.text = "This"
            }
        }
    }
    
    @IBAction func didSelectItem(_ sender: UIButton) {
        for button in selectionButtons {
            if button == sender {
                selectedQuestion = button.tag
                button.isSelected = true
            } else {
                button.isSelected = false
            }
        }
    }
    
    @IBAction func sendButton(_ sender: Any) {
        if selectedQuestion == correctAnswerIndex {
            print("acertou")
        } else {
            print("errou")
        }
    }
}
