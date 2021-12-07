//
//  ContentView.swift
//  JSONPosts
//
//  Created by Mickael Mas on 07/12/2021.
//

import SwiftUI

struct PostsView: View {
    
    @State private var posts: [Post] = []
    @State private var isErrorPresented = false
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .task {
            do {
                posts = try await Post.getPosts()
            } catch {
                isErrorPresented.toggle()
            }
        }
        .alert(isPresented: $isErrorPresented) {
            Alert(title: Text("Error"), message: Text("Une erreur est survenue"), dismissButton: .default(Text("OK")))
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
