//
//  Ditados.swift
//  Porting
//
//  Created by Paula Leite on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation
import UIKit

struct Ditados {
    let titulo: String
    let descricao: String
    let traducao: String
    let perguntas: [String]
    let indiceRespostaCorreta: Int
    
    init(titulo: String, descricao: String, traducao: String, perguntas: [String], indiceRespostaCorreta: Int) {
        self.titulo = titulo
        self.descricao = descricao
        self.traducao = traducao
        self.perguntas = perguntas
        self.indiceRespostaCorreta = indiceRespostaCorreta
    }
}
