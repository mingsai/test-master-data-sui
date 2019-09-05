//
//  PostTitleContentView.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/4/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct PostTitleContentView: View {
    @State var title:String = ""
    @State var textContent:String = ""
    var body: some View {
        VStack {
            TextField("Enter Title", text: $title)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .foregroundColor(.red)
                .lineLimit(2)
            TextField("Enter Comments", text: $textContent)
                .frame(height: 120.0, alignment: .top)
                .lineLimit(nil)
                .multilineTextAlignment (.leading)
                .font(.body)
                .padding(.leading)
        }
    }
}

struct PostTitleContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostTitleContentView()
    }
}
