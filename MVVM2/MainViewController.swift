//
//  ViewController.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var profiles: [Profile]!
    
    let tableView = TableView(frame: .zero, style: .plain)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        profiles = [Profile(name: "David", secondName: "Usher", age: 23),
                    Profile(name: "Sara", secondName: "Connor", age: 19),
                    Profile(name: "Arni", secondName: "Giga", age: 45)]
        
        setView()
        setDelegates()
        setConstraints()
    }

    func setView() {
        view.addSubview(tableView)
    }
    
    func setDelegates() {
        tableView.dataSource = self
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }

}

extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MVVMTableViewCell
        
        cell.cellConfigure(nameLabelText: "Name", secondNameLabelText: "Second")
        
        
        return cell
    }
    
    
}
