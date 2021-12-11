//
//  MamaBearBowlView.swift
//  MamaBearsBowl
//
//  Created by Nate S on 2021-12-11.
//

import SwiftUI

struct ButtonBackground: View {
    var body: some View {
        Color("Salmon")
    }
}
struct ContentView: View {
    // MARK: STORED PROPERTIES
    @State var bowlOneWeight: Double = 47.00
    @State var bowlTwoWeight: Double = 53.00
    @State var bowlThreeWeight: Double = 61.00
    
    @State var result: String = ""
    // MARK: COMPUTED PROPERTIES
    var body: some View {
        ZStack {
            Color("Sand")
                .ignoresSafeArea()
            VStack {
                HStack(alignment: .top) {
                Text("Mama Bear Bowl Finder")
                    .foregroundColor(Color("Concord"))
                    .padding(.top)
                    .font(.system(size: 30, weight: .medium, design: .serif))
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(Color("Concord"))
                        .padding(.top, 27)
                        .frame(width: 34, height: 34)
                }
                Divider()
                HStack() {
                    VStack {
                        Text("Bowl 1")
                            .font(.system(size: 25, weight: .medium, design: .serif))
                            .foregroundColor(Color("Roseberry"))
                        Text("\(String(format:"%.0f", bowlOneWeight)) dag")
                            .font(.system(size: 20, weight: .medium, design: .serif))
                            .foregroundColor(Color("Murk"))
                            .padding(.top)
                        Stepper("", value: $bowlOneWeight,
                                in: 0...100,
                                step: 1.0)
                            .padding(.trailing)
                    }
                    Divider()
                    VStack {
                        Text("Bowl 2")
                            .font(.system(size: 25, weight: .medium, design: .serif))
                            .foregroundColor(Color("Roseberry"))
                        Text("\(String(format:"%.0f", bowlTwoWeight)) dag")
                            .font(.system(size: 20, weight: .medium, design: .serif))
                            .foregroundColor(Color("Murk"))
                            .padding(.top)
                        Stepper("", value: $bowlTwoWeight,
                                in: 0...100,
                                step: 1.0)
                            .padding(.trailing)
                    }
                    Divider()
                    VStack {
                        Text("Bowl 3")
                            .font(.system(size: 25, weight: .medium, design: .serif))
                            .foregroundColor(Color("Roseberry"))
                        Text("\(String(format:"%.0f", bowlThreeWeight)) dag")
                            .font(.system(size: 20, weight: .medium, design: .serif))
                            .foregroundColor(Color("Murk"))
                            .padding(.top)
                        Stepper("", value: $bowlThreeWeight,
                                in: 0...100,
                                step: 1.0)
                            .padding(.trailing)
                    }
                }
                Divider()
                Button(action: {
                    
                }, label: {
                    Text("Find Mama Bear's bowl")
                })
                    .background(ButtonBackground())
                    .buttonStyle(.bordered)
                    .foregroundColor(Color("Concord"))
                    .cornerRadius(11)
                    .padding(.top)
                Spacer(minLength: 480)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
