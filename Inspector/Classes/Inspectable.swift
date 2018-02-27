//
//  Inspectable.swift
//  Inspector
//
//  Created by Mac Bellingrath on 2/27/18.
//

import Foundation

protocol Inspectable {
    associatedtype KeyType
    associatedtype ValueType

    var key: KeyType { get }
    var value: ValueType { get }
}

class InspectibleDataSource: NSObject, UITableViewDataSource {
    lazy var dictionary = UserDefaults.standard.dictionaryRepresentation()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return .init()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 0

//        return dictionary.values.map({ type(of: $0) })
    }
}

