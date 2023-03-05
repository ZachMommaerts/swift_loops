//
//  ContentView.swift
//  swift_loops
//
//  Created by Zach Mommaerts on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ints = [Int]()
    var body: some View {
        VStack {
            
            List(ints, id: \.self){ int in
                Text(String(int))
            }
            
            Button(action: {
                var int:Int
                repeat{
                    let randInt = Int.random(in: 1...10)
                    int = randInt
                    ints.append(randInt)
                } while(int != 7)
                
            }, label: {
                Text("Add integer")
            })
            
            Button(action: {
                for i in ints.indices{
                    ints[i] += 1
                }
            }, label: {
                Text("Increase integers")
            })
            
            Button(action: {
                ints.removeAll()
            }, label: {
                Text("Clear integers")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
