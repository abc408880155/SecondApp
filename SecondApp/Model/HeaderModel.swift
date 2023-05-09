//
//  HeaderModel.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/9.
//

import Foundation
import SwiftUI

// MARK: - HEADER MODEL
struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
