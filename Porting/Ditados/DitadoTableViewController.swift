//
//  DitadoTableViewController.swift
//  Porting
//
//  Created by Victor Falcetta do Nascimento on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class DitadoTableViewController: UITableViewController {
    
    let ditado = Ditado()
    let arrayDitado: [Ditado]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayDitado.setUpMock()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDitado.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cDitado", for: indexPath)
        cell.textLabel?.text = arrayDitado[indexPath.row].ditado
        
        return cell
    }
}
