//
//  ContentView.swift
//  RollTheDice
//
//  Created by macbook on 2021/10/06.
//

import SwiftUI

struct ContentView: View {
    @State var rollNumber = 1
    @State var rolledIt = false
    var body: some View {
        VStack {
            Image(rolledIt ? "\(rollNumber)" : "unknown")
                .resizable()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .padding(.top, 250)
            Spacer()
            Button(action: {self.rollNumber = Int.random(in: 1..<7)
                self.rolledIt = true
            }, label: {
                RollButtonContent()
            }).padding(.bottom, 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RollButtonContent: View {
    var body: some View {
        Text("Roll the dice")
            .frame(width: 240, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(20)
            .font(.headline)
    }
}
