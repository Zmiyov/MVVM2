//
//  TextLabel.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import Foundation
import UIKit


class TextLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
        textColor = .label
        textAlignment = .center
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        translatesAutoresizingMaskIntoConstraints = false
        adjustsFontSizeToFitWidth = true
    }
}
