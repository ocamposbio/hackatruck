//
//  PhotosView.swift
//  tabview
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        let imagens = [
            "figure.fall",
            "figure.fall.circle",
            "figure.fall.circle.fill",
            "figure.run",
            "figure.run.circle.fill",
            "figure.run.circle"
        ]
        
        
        ScrollView {
            VStack(spacing: 20) {
                ForEach(imagens, id: \.self) {  i in
                    Image(systemName: "\(i)")
                        .foregroundStyle(.black)
                        .font(.system(size: 150))
                }
            }
        } .frame(height: 350)
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
