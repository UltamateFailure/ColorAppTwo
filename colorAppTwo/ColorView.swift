//
//  ContentView.swift
//  colorAppTwo
//
//  Created by Jordan, Bryce on 8/31/21.
//

import SwiftUI

struct ColorView: View
{
    @State private var color : Color = .green
    
    var body: some View
    {
        ZStack
        {
            color.edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("Yay Even more COLORS")
                    .font(.title)
                    .foregroundColor(createRandomColor())
                    .bold()
                Button("Click", action: switchColor)
                    .font(.title)
                    .foregroundColor(createRandomColor())
            }.background(createRandomColor())
        }
    }
    
    private func switchColor()-> Void
    {
        color = createRandomColor()
    }
    
    private func createRandomColor() -> Color
    {
        let currentColor : Color
        
        let red = Double ( (arc4random() % 256)) / 255.0
        let green = Double ( (arc4random() % 256)) / 255.0
        let blue = Double ( (arc4random() % 256)) / 255.0
        currentColor = Color(red: red, green: green, blue: blue)
        return currentColor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
