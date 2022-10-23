//
//  ViewController.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: TableViewViewModelType?
    
    let tableView = TableView(frame: .zero, style: .plain)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        viewModel = ViewModel()
        
        setView()
        setDelegates()
        setConstraints()
    }

    func setView() {
        view.addSubview(tableView)
    }
    
    func setDelegates() {
        tableView.dataSource = self
        tableView.delegate = self
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
        return viewModel?.numberOfRows() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MVVMTableViewCell
        
        guard let cell = cell, let viewModel = viewModel else { return UITableViewCell() }
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        cell.viewModel = cellViewModel
        
        return cell
    }
    
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
