//
//  LanguageRepoColors.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import Foundation
import SwiftUI

public func languageRepoColor(language: String) -> Color {
    switch language.lowercased() {
    case "html" :
        return Color.init(hex: "#e34c26")
    case "c" :
        return Color.init(hex: "#555555")
    case "c#" :
        return Color.init(hex: "#178600")
    case "c++" :
        return Color.init(hex: "#f34b7d")
    case "css" :
        return Color.init(hex: "#563d7c")
    case "java" :
        return Color.init(hex: "#b0721a")
    case "javascript" :
        return Color.init(hex: "#f1e05a")
    case "json" :
        return Color.init(hex: "#292929")
    case "kotlin" :
        return Color.init(hex: "#a97bff")
    case "less" :
        return Color.init(hex: "#1d365d")
    case "makefile" :
        return Color.init(hex: "#427819")
    case "php" :
        return Color.init(hex: "#4f5e95")
    case "python" :
        return Color.init(hex: "#3572a5")
    case "sql" :
        return Color.init(hex: "#e38c00")
    case "dart" :
        return Color.init(hex: "#00b4ab")
    case "objectif-c" :
        return Color.init(hex: "#438eff")
    case "swift" :
        return Color.init(hex: "#f05138")
    default:
        return Color.blue
    }
}
