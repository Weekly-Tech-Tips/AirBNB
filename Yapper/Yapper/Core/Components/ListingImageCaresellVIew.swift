//
//  ListingImageCaresellVIew.swift
//  Yapper
//
//  Created by Aarush Kamat on 6/29/24.
//

import SwiftUI

struct ListingImageCaresellVIew: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){ image in
           Image(image)
                    .resizable()
                    .scaledToFill()

            }
        }
       
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCaresellVIew()
}
