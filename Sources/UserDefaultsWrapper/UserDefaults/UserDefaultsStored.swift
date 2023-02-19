//
//  File.swift
//  
//
//  Created by Dylan Rafferty on 2/19/23.
//

import Foundation

@propertyWrapper
public struct UserDefaultsStored<Key: UserDefaultsKey> {
    
    public var wrappedValue: Key.Value {
        get {
            let storedValue = UserDefaults.standard.value(forKey: Key.key) as? Key.Value
            return storedValue ?? Key.defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Key.key)
        }
    }
    
    private let key: Key.Type
    
    public init(_ key: Key.Type) {
        self.key = key
    }
}
