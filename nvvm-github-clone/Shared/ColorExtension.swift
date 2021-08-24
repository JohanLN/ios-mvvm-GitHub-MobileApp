//
//  ColorExtension.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import Foundation

import SwiftUI

extension Color {
    
    static var background: Color {
        return Color("Background")
    }
    
    static var accentColor: Color {
        return Color("AccentColor")
    }
    
    static var card: Color {
        return Color("Card")
    }

    static var clickableText: Color {
        return Color("ClickableText")
    }
    
    static var baner: Color {
        return Color("Baner")
    }

    static var validation: Color {
        return Color("Validation")
    }

    static var text: Color {
        return Color("Text")
    }
    
    static var stroke: Color {
        return Color("Stroke")
    }
    
}

extension UIColor {
    
    static var background: UIColor  {
            return UIColor(named: "Background")!
     }
    
    static var accentColor: UIColor {
        return UIColor(named: "AccentColor")!
    }
    
    static var card: UIColor {
        return UIColor(named: "Card")!
    }

    static var clickableText: UIColor {
        return UIColor(named: "ClickableText")!
    }
    
    static var baner: UIColor {
        return UIColor(named: "Baner")!
    }

    static var validation: UIColor {
        return UIColor(named: "Validation")!
    }

    static var text: UIColor {
        return UIColor(named: "Text")!
    }
    
    static var stroke: UIColor {
        return UIColor(named: "Stroke")!
    }

}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
