//
//  TableViewCellViewModelType.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
