//
//  GradientsExtension.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

func fruitGradientBoxColor(with colors: [Color]) -> LinearGradient {
    return LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
}
