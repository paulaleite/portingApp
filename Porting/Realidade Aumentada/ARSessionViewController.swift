//
//  ARSessionViewController.swift
//  Porting
//
//  Created by gabriel on 26/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit
import RealityKit

enum ObjectEnum {
    case bola
    case capacete
    case lapis
}

class ARSessionViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    var bola: Porting.Bola!
    var capacete: Porting.Capacete!
    var lapis: Porting.Lapis!
    
    var currentObject:  ObjectEnum = .bola
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        bola = try! Porting.loadBola()
        capacete = try! Porting.loadCapacete()
        lapis = try! Porting.loadLapis()
        
        arView.scene.anchors.append(bola)
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        arView.scene.anchors.removeAll()
        switch currentObject {
        case .bola:
            arView.scene.anchors.append(capacete)
            currentObject = .capacete
        case .capacete:
            arView.scene.anchors.append(lapis)
            currentObject = .lapis
        case .lapis:
            arView.scene.anchors.append(bola)
            currentObject = .bola
        }
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        arView.scene.anchors.removeAll()
        switch currentObject {
        case .bola:
            arView.scene.anchors.append(lapis)
            currentObject = .lapis
        case .capacete:
            arView.scene.anchors.append(bola)
            currentObject = .bola
        case .lapis:
            arView.scene.anchors.append(capacete)
            currentObject = .capacete
        }
    }
}
