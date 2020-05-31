//
//  HomeViewController.swift
//  Porting
//
//  Created by Felipe Petersen on 22/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var buttonAR: UIButton!
    @IBOutlet weak var buttonEscuta: UIButton!
    @IBOutlet weak var buttonDitados: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Porting"
        self.view.backgroundColor = .white

    }
    
    @IBAction func aparecerTableDitados(_ sender: Any) {
        
        let ditadoTableViewController = DitadoTableViewController()
        self.navigationController?.pushViewController(ditadoTableViewController, animated: true)
        
    }
    
    @IBAction func didTapAudioExercises(_ sender: Any) {
        let ditadoTableViewController = DitadoTableViewController()
        ditadoTableViewController.viewType = .audio
        self.navigationController?.pushViewController(ditadoTableViewController, animated: true)
    }
    
}
