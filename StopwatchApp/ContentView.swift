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
                    Spacer()
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
                        HStack{
                            Text("Lap 5")
                                 Spacer()
                                Text("00:00.98")
                                .padding(.vertical, 15)
                                 }
                        HStack{
                            Text("Lap 4")
                                .foregroundColor(.red)
                            Spacer()
                            Text("00:04.08")
                                .foregroundColor(.red)
                                .padding(.vertical, 15)
                        }
                        HStack{
                            Text("Lap 3")
                                .foregroundColor(.green)
                            Spacer()
                            Text("00:00.96")
                                .foregroundColor(.green)
                                .padding(.vertical, 15)
                        }
                        HStack {
                            Text("Lap 2")
                            Spacer()
                            Text("00:02.16")
                            .padding(.vertical, 15)
                                 }
                            
                        HStack {
                            Text("Lap 1")
                            Spacer()
                            Text("00:01.16")
                            .padding(.vertical, 15)
                        }
                                
                
                        
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0,bottom: 0,trailing: 0))
                }
                .frame(height: 300)
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
