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
    let nomeAudio: String
    
    init(titulo: String, pergunta: String, respostas: [String], indiceRespostaCorreta: Int, nomeAudio: String) {
        self.titulo = titulo
        self.pergunta = pergunta
        self.respostas = respostas
        self.indiceRespostaCorreta = indiceRespostaCorreta
        self.nomeAudio = nomeAudio
    }
    
    static func setUpMock() -> [Audio] {
        var audios = [Audio]()
        
        let audio1 = Audio(titulo: "The importance of 'o' and 'a'", pergunta: "What's the best way to say thank you if you identify yourself as a girl?", respostas: ["Olá, eu sou uma menina.", "Olá, eu sou um menina.", "Olá, eu sou uma menino", "Olá, eu sou um menino."], indiceRespostaCorreta: 0, nomeAudio: "OandA")
        audios.append(audio1)
        
        let audio2 = Audio(titulo: "Coming to Brazil?", pergunta: "What's the best way to say hello to someone?", respostas: ["Give the person a high five.", "Do a hand shake.", "Give them a cheek kiss.", "Bow to them."], indiceRespostaCorreta: 2, nomeAudio: "ComingToBrazil")
        audios.append(audio2)
        
        let audio3 = Audio(titulo: "Food in Brazil!", pergunta: "Where do people eat Acarajé?", respostas: ["Nordeste", "São Paulo", "Rio Grande do Sul", "Bahia"], indiceRespostaCorreta: 3, nomeAudio: "FoodBrazil")
        audios.append(audio3)
        
        return audios
    }
}
