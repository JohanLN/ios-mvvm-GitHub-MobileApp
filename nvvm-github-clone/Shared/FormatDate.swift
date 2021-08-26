//
//  FormatDate.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

public func formatDate(stringDate: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "fr_FR")
    dateFormatter.dateFormat = "yyyy-MM-dd"
        
    let date = dateFormatter.date(from: String(stringDate.prefix(10))) ?? Date()
    
    if Int((Date().timeIntervalSince(date) / 86400)) > 1 {
        return String(Int((Date().timeIntervalSince(date) / 86400))) + " days ago."
    }
    return String(Int((Date().timeIntervalSince(date) / 86400))) + " day ago."
}
