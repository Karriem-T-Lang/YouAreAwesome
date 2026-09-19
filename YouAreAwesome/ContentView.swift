//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Karriem Lang on 9/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var image = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                let image1 = "sun.max.fill"
                let image2 = "hand.thumbsup"
                
                message = ( message == message1 ? message2 : message1)
                image = ( image == image1 ? image2 : image1)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            .buttonBorderShape(.roundedRectangle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
