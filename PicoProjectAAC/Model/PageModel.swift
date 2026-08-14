//
//  PageModel.swift
//  PicoProjectAAC
//
//  Created by Humphrey Curtis on 25/03/2024.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
