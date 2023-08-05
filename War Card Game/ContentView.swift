//
//  ContentView.swift
//  War Card Game
//
//  Created by Will Cote on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var player_card:String = "card7"
    @State var cpu_card:String = "card5"
    
    @State var player_score:Int = 0
    @State var cpu_score:Int = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(player_card)
                    Spacer()
                    Image(cpu_card)
                    Spacer()
                }
                Spacer()
                                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(player_score))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.top)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpu_score))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.top)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func deal(){
        
        var playerNumber:Int = Int.random(in: 2...14)
        var cpuNumber:Int = Int.random(in: 2...14)
        
        player_card = "card" + String(playerNumber)
        cpu_card = "card" + String(cpuNumber)
        
        if playerNumber > cpuNumber{
            player_score += 1
        }
        else if cpuNumber > playerNumber{
            cpu_score += 1
        }
        else{
            return
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
