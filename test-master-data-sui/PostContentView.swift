//
//  PostContentView.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct PostContentView: View {
    
    //var onDismiss: () -> ()
    var body: some View {
        VStack {
            PostTitleContentView(title:"",textContent:"")
            .overlay(
                //Capsule(style: .continuous)
                RoundedRectangle (cornerRadius: 15.0)
                .stroke(Color.purple, style: StrokeStyle(lineWidth: 5, dash: [10]))
                //.stroke(Color.orange, lineWidth: 5))
            )
                .padding(.horizontal)
            PostTitleControlView()
                .background(Color.yellow)
                .cornerRadius(15.0)
                .padding(.horizontal)
        }
        .padding(.vertical)
        .accentColor(.red)
    }
}

struct PostContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostContentView()
    }
}
