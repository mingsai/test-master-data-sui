//
//  PostTitleControlView.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/4/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct PostTitleControlView: View{
    @Environment(\.presentationMode)var presentationMode:Binding<PresentationMode>

    var body: some View {
        HStack {
            Button(action: {
                //dosomething
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName:"video.circle.fill")
                    .resizable()
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            }
            Button(action: {
                //dosomething
            }) {
                Image(systemName:"camera.circle.fill")
                    .resizable()
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            }
            Button(action: {
                //dosomething
            }) {
                Image(systemName:"mic.circle.fill")
                    .resizable()
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            }
        }.padding(.all)
        .accentColor(.red)
    }
}

struct PostTitleControlView_Previews: PreviewProvider {
    static var previews: some View {
        PostTitleControlView()
    }
}
