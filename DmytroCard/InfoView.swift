//
//  InfoView.swift
//  DmytroCard
//
//  Created by Dmytro Yantsybaiev on 30.12.2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let sfSymbol: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(uiColor: Styling.Color.white.color))
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: sfSymbol)
                        .foregroundColor(.blue)
                    Text(text)
                        .foregroundColor(Color(uiColor: Styling.Color.black.color))
                        .font(.system(size: 20))
                }
            )
            .padding(.all, 10)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView(text: "Hello World!", sfSymbol: "phone.fill")
                .previewLayout(.sizeThatFits)
        }
    }
}
