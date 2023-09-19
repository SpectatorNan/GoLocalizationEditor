//
//  SwiftUI+Binding.swift
//  goparser
//
//  Created by spec on 2023/9/19.
//

import SwiftUI

extension Binding {
     func toUnwrapped<T>(defaultValue: T) -> Binding<T> where Value == Optional<T>  {
        Binding<T>(get: { self.wrappedValue ?? defaultValue }, set: { self.wrappedValue = $0 })
    }
}
