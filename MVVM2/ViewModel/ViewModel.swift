//
//  ViewModel.swift
//  MVVM2
//
//  Created by Vladimir Pisarenko on 23.10.2022.
//

import Foundation



class ViewModel: TableViewViewModelType {

    var numberOfRows: Int {
        return profiles.count
    }
    
    var profiles = [Profile(name: "David", secondName: "Usher", age: 23),
                    Profile(name: "Sara", secondName: "Connor", age: 19),
                    Profile(name: "Arni", secondName: "Giga", age: 45)]
    
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
}
 
