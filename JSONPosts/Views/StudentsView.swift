//
//  StudentsView.swift
//  JSONPosts
//
//  Created by Mickael Mas on 08/12/2021.
//

import SwiftUI

struct StudentsView: View {
    
    let students: [Student] = load("students.json")
    
    var body: some View {
        List(students) { student in
            VStack(alignment: .leading) {
                Text(student.name)
                    .bold()
                Text(student.afp.city)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct StudentsView_Previews: PreviewProvider {
    static var previews: some View {
        StudentsView()
    }
}
