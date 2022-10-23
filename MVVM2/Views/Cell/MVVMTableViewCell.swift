//
//  MVVMTableViewCell.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import UIKit

class MVVMTableViewCell: UITableViewCell {

    private let ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 16)

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fullNameLabel: UILabel = {
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
        
        addSubview(ageLabel)
        addSubview(fullNameLabel)
    }
    
    private func configure(ageLabelText: String, fullNameLabelText: String) {
        ageLabel.text = ageLabelText
        fullNameLabel.text = fullNameLabelText
    }
    
    public func cellConfigure(ageLabelText: String, fullNameLabelText: String) {
        configure(ageLabelText: ageLabelText, fullNameLabelText: fullNameLabelText)
    }
    
}

extension MVVMTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            fullNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            fullNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            ageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            ageLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

