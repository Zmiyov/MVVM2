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
    
    init(viewModel: DetailViewModelType? = nil) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        
        setViews()
        setConstraints()
        
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.label.text = string
        }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "Some new value"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.label.text = viewModel.description
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
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
