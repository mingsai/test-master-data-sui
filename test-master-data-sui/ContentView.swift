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
    @State private var modalDisplayed = false

    var body: some View {
        NavigationView {
            MasterView()
                .navigationBarTitle("Master")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(
                        action: {
                            self.modalDisplayed.toggle()
                        }
                    ) { 
                        Image(systemName: "plus")
                    }.sheet(isPresented: $modalDisplayed, onDismiss: {
                        self.modalDisplayed.toggle()
                    }) {
                        PostContentView()
                    }
                )
            Text("Detail view content goes here")
                .navigationBarTitle("Detail")
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct MasterView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Post.timestamp, ascending: true)],
        animation: .default)
    var posts: FetchedResults<Post>

    @Environment(\.managedObjectContext)
    var viewContext

    var body: some View {
        List {
            ForEach(posts, id: \.self) { post in
                NavigationLink(
                    destination: DetailView(post: post)
                ) {
                    Text("\(post.timestamp!, formatter: dateFormatter)")
                }
            }.onDelete { indices in
                self.posts.delete(at: indices, from: self.viewContext)
            }
        }
    }
}

struct DetailView: View {
    @ObservedObject var post: Post

    var body: some View {
        Text("\(post.timestamp!, formatter: dateFormatter)")
            .navigationBarTitle("Detail")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        return ContentView().environment(\.managedObjectContext, context)
    }
}
