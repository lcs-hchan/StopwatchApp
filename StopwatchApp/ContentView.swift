//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Hayden Chan on 2023-11-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("00:09.96")
                    .font(Font.system(size:90,weight: .thin))
                    .foregroundColor(.white)
                
                HStack {
                    
                    Circle_Button_View(buttonColor: .gray, label: "Reset", labelColor: .white)
                    Spacer()
                    
                    Circle_Button_View(buttonColor: .brown, label: "Start", labelColor: .green)
                
                    
                }
                
            }
            .padding()
        }
     
    }
}

#Preview {
    ContentView()
}
