//
//  ContentView.swift
//  arohiGroupSync
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
import SwiftData
struct ContentView: View {

    var body: some View {
        NavigationStack {
            VStack {
                Text("GroupSync")
                    .font(.system(size:75))
                
                Spacer()
                    .padding()
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Edit Your Schedule")
                        .font(.title)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                }

                NavigationLink(destination: SeeAvaliability()) {
                    Text("See Avaliability")
                        .font(.title)
                }

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
