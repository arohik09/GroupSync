//
//  AddGroup.swift
//  arohiGroupSync
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
import SwiftData
struct AddGroup: View {
    @Bindable var group: Group
    @Environment(\.modelContext) var modelContext
    @Binding var newGroup: Bool

    var body: some View {
        VStack {
            TextField("Enter the task description...", text: $group.title, axis: .vertical)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
            Text("Group Name")
            
            Button {
                additionalGroup()
            } label: {
                    Text("Save")
            }
        }
        .padding()
    }
    
    func additionalGroup() {
        let AGroup = Group(title: group.title)
        modelContext.insert(AGroup)
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Group.self, configurations: config)

    let AGroup = Group(title: "Example ToDo")
    return AddGroup(group: AGroup, newGroup: .constant(true))
        .modelContainer(container)
}
