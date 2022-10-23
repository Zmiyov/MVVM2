//
//  MVVMTableViewCell.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import UIKit

class MVVMTableViewCell: UITableViewCell {

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 16)

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 16)

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.backgroundColor = .white
        contentView.alpha = 0.5
        
        addSubview(nameLabel)
        addSubview(secondNameLabel)
    }
    
    private func configure(nameLabelText: String, secondNameLabelText: String) {
        nameLabel.text = nameLabelText
        secondNameLabel.text = secondNameLabelText
    }
    
    public func cellConfigure(nameLabelText: String, secondNameLabelText: String) {
        configure(nameLabelText: nameLabelText, secondNameLabelText: secondNameLabelText)
    }
    
}

extension MVVMTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            
            secondNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            secondNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

