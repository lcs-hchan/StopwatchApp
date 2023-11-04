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
                Spacer()
                Text("00:09.96")
                    .font(Font.system(size:90,weight: .thin))
                    .foregroundColor(.white)
                
                HStack {
                    
                    Circle_Button_View(
                        buttonColor: Color("Dark Grey"),
                        label: "Reset",
                        labelColor: .white
                    )
                    Spacer()
                    
                    Circle_Button_View(
                        buttonColor: Color("Dark Green"),
                        label: "Start",
                        labelColor: .green
                    )
                    
                    
                }
                List{
                    Group{
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0,bottom: 0,trailing: 0))
                }
                .frame(height:300)
                .listStyle(.plain)
                    
                
            }
            .padding()
        }
    }
}

#Preview {
    TabView(selection: Binding.constant(3)){
    
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
                
            }
            .tag(1)
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
                
            }
            .tag(2)
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        Text("Timer")
            .tabItem{
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
        
    }
    .accentColor(.orange)
    .preferredColorScheme(.dark)
}
