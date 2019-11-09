//
//  Task.swift
//  Relude
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import AppKit

struct Task: Identifiable{
    var id = UUID()
    var logo: String
    var title: String
    var description: String
    var schedule: Schedule
    var color: NSColor
    var createdDate = Date()
}
