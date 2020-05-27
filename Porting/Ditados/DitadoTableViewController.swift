//
//  DitadoTableViewController.swift
//  Porting
//
//  Created by Victor Falcetta do Nascimento on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class DitadoTableViewController: UITableViewController {
    
    var arrayDitado: [Ditado] = Ditado.setUpMock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "DitadoTableViewCell", bundle: nil), forCellReuseIdentifier: "DitadoTableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDitado.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DitadoTableViewCell", for: indexPath)
        cell.textLabel?.text = arrayDitado[indexPath.row].titulo
        
        return cell
    }
}
