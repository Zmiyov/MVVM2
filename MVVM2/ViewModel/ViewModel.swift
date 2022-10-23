//
//  ViewModel.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import Foundation



class ViewModel: TableViewModelType {
    var numberOfRows: Int {
        return profiles.count
    }
    
    var profiles = [Profile(name: "David", secondName: "Usher", age: 23),
                    Profile(name: "Sara", secondName: "Connor", age: 19),
                    Profile(name: "Arni", secondName: "Giga", age: 45)]
}
 
