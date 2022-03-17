//
//  ContentView.swift
//  NataliyaCard
//
//  Created by Nataliya Lazouskaya on 15.03.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 0.6)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nataliya")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                    )
                Text("Nataliya Lazouskaya")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+375 29 7153353", imageName: "phone.fill")
                InfoView(text: "nataliya.laz@gmail.com", imageName: "envelope.fill")

                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


