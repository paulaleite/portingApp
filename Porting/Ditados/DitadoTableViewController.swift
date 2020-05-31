//
//  DitadoTableViewController.swift
//  Porting
//
//  Created by Victor Falcetta do Nascimento on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

enum TableViewType {
    case ditado
    case audio
}

class DitadoTableViewController: UITableViewController {
    
    var viewType: TableViewType = .ditado
    
    var arrayAudio: [Audio] = Audio.setUpMock()
    var arrayDitado: [Ditado] = Ditado.setUpMock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        self.setupNav()
    }
    
    func setupTableView() {
        self.tableView.register(UINib(nibName: "DitadoTableViewCell", bundle: nil), forCellReuseIdentifier: "DitadoTableViewCell")
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    func setupNav() {
        switch viewType {
        case .ditado:
            self.title = "Exercícios de Ditado"
        default:
            self.title = "Exercícios de Audio"
        }
        navigationItem.largeTitleDisplayMode = .never
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch viewType {
        case .ditado:
            return arrayDitado.count
        default:
            return arrayAudio.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DitadoTableViewCell", for: indexPath) as? DitadoTableViewCell
        
        switch viewType {
        case .ditado:
            cell?.tituloDitado.text = arrayDitado[indexPath.row].titulo
        default:
            cell?.tituloDitado.text = arrayAudio[indexPath.row].titulo
        }
        
        guard let safeCell = cell else {
            return UITableViewCell()
        }
        
        return safeCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch viewType {
        case .ditado:
                    let perguntaViewController = ExerciseViewController()
            perguntaViewController.ditado = arrayDitado[indexPath.row]
            self.navigationController?.pushViewController(perguntaViewController, animated: true)
        default:
            let audioViewController = VoiceExerciseViewController()
            audioViewController.audio = arrayAudio[indexPath.row]
            self.navigationController?.pushViewController(audioViewController, animated: true)
        }
    }
}
