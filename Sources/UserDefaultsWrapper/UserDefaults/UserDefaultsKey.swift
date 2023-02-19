//
//  File.swift
//  
//
//  Created by Dylan Rafferty on 2/19/23.
//

import Foundation

public protocol UserDefaultsKey {
    associatedtype Value
    static var defaultValue: Self.Value { get }
    static var key: String { get }
}
