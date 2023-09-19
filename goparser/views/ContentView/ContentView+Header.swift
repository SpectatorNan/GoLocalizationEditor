//
//  ContentView+Header.swift
//  goparser
//
//  Created by spec on 2023/9/17.
//

import SwiftUI

extension ContentView {
    var tableHeader: some View {
        ForEach(headers, id: \.self) { header in
            Text(header)
        }
    }
}
