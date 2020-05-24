//
//  Ditados.swift
//  Porting
//
//  Created by Paula Leite on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation
import UIKit

struct Ditado {
    let titulo: String
    let descricao: String
    let traducao: String
    let pergunta: String
    let respostas: [String]
    let indiceRespostaCorreta: Int
    
    init(titulo: String, descricao: String, traducao: String, pergunta: String, respostas: [String], indiceRespostaCorreta: Int) {
        self.titulo = titulo
        self.descricao = descricao
        self.traducao = traducao
        self.perguntas = perguntas
        self.respostas = respostas
        self.indiceRespostaCorreta = indiceRespostaCorreta
    }
}
