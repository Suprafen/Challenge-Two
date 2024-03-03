//
//  ContentView.swift
//  ChallengeTwo
//
//  Created by Ivan Pryhara on 03/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var width: Double = 300
    
    private let height: Double = 200
    private let padding: Double = 16
    
    private var message: AttributedString {
        var result = AttributedString("Марафон")
        result.font = .body
        result.foregroundColor = .secondary
        
        var result2 = AttributedString(" по SwiftUI ")
        result2.font = .body
        result2.foregroundColor = .black
        
        var result3 = AttributedString("«Отцовский Пинок»")
        result3.font = .title.bold()
        result3.foregroundColor = .blue
        
        return result + result2 + result3
    }
    
    var body: some View {
        VStack {
            Text(message)
                .frame(width: width, height: height)
                .border(.red)
            
            Slider(value: $width, in: 100...300)
        }
        .padding(.horizontal, padding)
    }
}

#Preview {
    ContentView()
}
