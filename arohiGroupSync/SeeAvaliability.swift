//
//  SeeAvaliability.swift
//  arohiGroupSync
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
import SwiftData
struct SeeAvaliability: View {
    @State private var newGroup = false
    @Query var aGroup: [Group]
    @Environment(\.modelContext) var modelContext
    var body: some View {
            VStack {
            
                Button {
                    withAnimation {
                        self.newGroup = true
                    }
                } label: {
                    Text(" + Add New Group")
                        .font(.title)
                }
                
                List {
                        ForEach (aGroup) { group in
                                Text(group.title)
                            }
                        .onDelete(perform: deleteGroup)
                }
                .listStyle(.plain)
            }
        
        if newGroup {
            AddGroup(group: Group(title: ""), newGroup: $newGroup)
        }
            
        }
    func deleteGroup(at offsets: IndexSet) {
        for offset in offsets {
            let group = aGroup[offset]
            modelContext.delete(group)
        }
    }
    }


#Preview {
    SeeAvaliability()
}
