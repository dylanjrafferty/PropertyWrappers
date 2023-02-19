//
//  File.swift
//  
//
//  Created by Dylan Rafferty on 2/19/23.
//

import Foundation

public struct UserDefaultsKeys {
    
    public subscript<K: UserDefaultsKey>(key: K) -> K {
        get {
            return key
        }
    }
}
