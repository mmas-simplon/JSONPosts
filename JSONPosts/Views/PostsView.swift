//
//  ContentView.swift
//  JSONPosts
//
//  Created by Mickael Mas on 07/12/2021.
//

import SwiftUI

struct PostsView: View {
    
    @State private var posts: [Post] = load("posts.json")
    
    @State private var isErrorPresented = false
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
