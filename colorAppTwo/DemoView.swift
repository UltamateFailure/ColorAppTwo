//
//  DemoView.swift
//  colorAppTwo
//
//  Created by Jordan, Bryce on 9/2/21.
//

import SwiftUI

struct DemoView: View
{
    var body: some View
    {
        VStack{
            Text("Hello! My name is Bryce")
                .font(.title)
                .foregroundColor(Color.green)
            Text("I love Ice-Cream!")
                .font(.footnote)
                .foregroundColor(Color.red)
            Text("I like to code")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
        }
    }
}

struct DemoView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DemoView()
    }
}
