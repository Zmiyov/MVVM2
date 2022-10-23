//
//  DetailViewController.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    let label = TextLabel()

    override func viewDidLoad() {
        super.viewDidLoad()

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
