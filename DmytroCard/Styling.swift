//
//  Styling.swift
//  DmytroCard
//
//  Created by Dmytro Yantsybaiev on 30.12.2021.
//

import Foundation
import UIKit
import SwiftUI

class Styling {
    enum Color {
        case background
        case white
        case black
    }
    enum Font {
        case pacificoRegular(size: CGFloat)
    }
}

extension Styling.Color {
    var color: UIColor {
        switch self {
        case .background:
            return UIColor(named: "background")!
        case .white:
            return UIColor(named: "white")!
        case .black:
            return UIColor(named: "black")!
        }
    }
}

extension Styling.Font {
    var font: Font {
        switch self {
        case .pacificoRegular(let size):
            return Font.custom("Pacifico-Regular", size: size)
        }
    }
}
