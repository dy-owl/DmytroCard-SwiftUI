//
//  ContentView.swift
//  DmytroCard
//
//  Created by Dmytro Yantsybaiev on 30.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        let imageSize: CGFloat = 250
        let imageBorder: CGFloat = 3
        let nameSize: CGFloat = 40
        let titleSize: CGFloat = 25
        
        ZStack {
            Color(uiColor: Styling.Color.background.color)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("dmytro")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: imageSize)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(uiColor: Styling.Color.white.color), lineWidth: imageBorder))
                Text("Dmytro Yantsybaiev")
                    .foregroundColor(Color(uiColor: Styling.Color.white.color))
                    .font(Styling.Font.pacificoRegular(size: nameSize).font)
                    .bold()
                Text("iOS Engineer")
                    .foregroundColor(Color(uiColor: Styling.Color.white.color))
                    .font(.system(size: titleSize))
                Divider()
                InfoView(text: "+12 (345) 123-45-67", sfSymbol: "phone.fill")
                InfoView(text: "some@mail.com", sfSymbol: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            .preferredColorScheme(.light)
            ContentView()
                .previewInterfaceOrientation(.portrait)
                .preferredColorScheme(.dark)
        }
    }
}


