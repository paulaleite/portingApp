//
//  Audio.swift
//  Porting
//
//  Created by Paula Leite on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation

import UIKit

struct Audio {
    let titulo: String
    let pergunta: String
    let respostas: [String]
    let indiceRespostaCorreta: Int
    
    init(titulo: String, pergunta: String, respostas: [String], indiceRespostaCorreta: Int) {
        self.titulo = titulo
        self.pergunta = pergunta
        self.respostas = respostas
        self.indiceRespostaCorreta = indiceRespostaCorreta
    }
    
    func setUpMock() -> [Audio] {
        var audios = [Audio]()
        
        return audios
    }
}
