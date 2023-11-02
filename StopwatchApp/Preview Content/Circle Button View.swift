//
//  Circle Button View.swift
//  StopwatchApp
//
//  Created by Hayden Chan on 2023-11-02.
//

import SwiftUI

struct Circle_Button_View: View {
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}


#Preview {
    Circle_Button_View(buttonColor: .gray, label: "Reset", labelColor: .white)
}
