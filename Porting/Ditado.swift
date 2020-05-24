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
        self.pergunta = pergunta
        self.respostas = respostas
        self.indiceRespostaCorreta = indiceRespostaCorreta
    }
    
    func setUpMock() -> [Ditado] {
        var ditados = [Ditado]()
        
        let ditado1 = Ditado(titulo: "Água mole, pedra dura, tanto bate até que fura", descricao: "Esse ditado quer dizer que, com persistência, você será capaz de alcançar seus objetivos. Que mesmo que algo seja difícil e você não consiga de primeira, basta se esforçar e não desistir que uma hora você irá conseguir.", traducao: "This saying means that, with persistence, you will be able to achieve your goals. That even if something is difficult and you don't get it at first, just try and not give up that one hour you will achieve.", pergunta: "In which of these situations does this saying work the best?", respostas: ["Give up on your first try.", "I wanted a job but didn't get it, so I gave up.", "Drawing is really hard for me, but I've slowly gotten better after 2 years.", "My father build his company because I'm lucky, so I'm going after that."], indiceRespostaCorreta: 2)
        ditados.append(ditado1)
        
        let ditado2 = Ditado(titulo: "A pressa é a inimiga da perfeição", descricao: "Esse ditado nos diz que quando fazemos algo correndo, temos mais chances daquilo ser feito errado. Ou seja, é melhor tomar seu tempo, para assim fazer algo perfeito.", traducao: "This saying tells us that when we do something running, we are more likely to get it done wrong. That is, it is better to take your time to do something perfect.", pergunta: "In which of these situations does this saying work the best?", respostas: ["I've taking a long time to finish my app, but I've been trying to make sure that it's structured the correct way.", "I finished my school assignment in the last minute.", "I tried swimming after one class.", "I had to make dinner in 30 minutes, but I needed 2 hours."], indiceRespostaCorreta: 0)
        ditados.append(ditado2)
        
        let ditado3 = Ditado(titulo: "À noite todos os gatos são pardos", descricao: "A premissa desse ditado é que, de noite, não conseguimos ver direito a cor das coisas, e por isso, não conseguimos ver bem a diferença das coisas, todas parecem iguais. No sentido mais figurado, o ditado nos diz que não precisamos nos preocupar tanto com as diferenças, pois no fim, tudo fica igual, que poucos irão reparar nos detalhes.", traducao: "The premise of this saying is that, at night, we cannot see the color of things properly, and therefore, we cannot see the difference in things well, they all look the same. In the most figurative sense, the saying tells us that we don't need to worry so much about differences, because in the end, everything stays the same, that few will notice the details.", pergunta: "In which of these situations does this saying work the best?", respostas: ["Women and men should have the same rights.", "There's a huge difference between people from different parts of the world.", "It's always good to try hard because that's all that matters.", "My father always says that me and my brother are totaly different."], indiceRespostaCorreta: 0)
        ditados.append(ditado3)
        
        let ditado4 = Ditado(titulo: "Águas passadas não movem moinhos", descricao: "Quer dizer que o que passou não pode mais mudar, nem ter poder sobre o agora, então devemos focar no presente e futuro.", traducao: "It means that what has passed can no longer change, nor have power over the now, so we must focus on the present and the future.", pergunta: "In which of these situations does this saying work the best?", respostas: ["I've been keeping myself focused on all of my past errors.", "I focus on my future.", "I can't get over my past relationship.", "I'm so upset because I didn't get the job I wanted."], indiceRespostaCorreta: 1)
        ditados.append(ditado4)
        
        let ditado5 = Ditado(titulo: "Cada macaco no seu galho", descricao: "Quer dizer que cada um deve cuidar da sua própria vida, dos seus próprios interesses, sem ficar se intrometendo nas questões alheias.", traducao: "It means that each one must take care of his own life, his own interests, without meddling in other people's issues.", pergunta: "In which of these situations does this saying work the best?", respostas: ["I can't wait to hear what happened on my friend's date.", "I don't think my brother should date that person.", "I sure think that they hired the wrong person.", "I don't really agree with my friend, but I respect his decision."], indiceRespostaCorreta: 3)
        ditados.append(ditado5)
        
        return ditados
    }
}
