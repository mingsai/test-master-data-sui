//
//  ContentView.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    return dateFormatter
}()

struct ContentView: View {
    @Environment(\.managedObjectContext)
    var viewContext   
 
    var body: some View {
        NavigationView {
            MasterView()
                .navigationBarTitle("Master")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(
                        action: {
                            withAnimation { Event.create(in: self.viewContext) }
                        }
                    ) { 
                        Image(systemName: "plus")
                    }
                )
            Text("Detail view content goes here")
                .navigationBarTitle("Detail")
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct MasterView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Event.timestamp, ascending: true)], 
        animation: .default)
    var events: FetchedResults<Event>

    @Environment(\.managedObjectContext)
    var viewContext

    var body: some View {
        List {
            ForEach(events, id: \.self) { event in
                NavigationLink(
                    destination: DetailView(event: event)
                ) {
                    Text("\(event.timestamp!, formatter: dateFormatter)")
                }
            }.onDelete { indices in
                self.events.delete(at: indices, from: self.viewContext)
            }
        }
    }
}

struct DetailView: View {
    @ObservedObject var event: Event

    var body: some View {
        Text("\(event.timestamp!, formatter: dateFormatter)")
            .navigationBarTitle("Detail")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        return ContentView().environment(\.managedObjectContext, context)
    }
}
