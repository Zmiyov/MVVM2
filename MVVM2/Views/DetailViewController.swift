//
//  DetailViewController.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    let label = TextLabel()
    
    var viewModel: DetailViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()

        setViews()
        setConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.label.text = viewModel.description
    }

    func setViews() {
        view.addSubview(label)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
