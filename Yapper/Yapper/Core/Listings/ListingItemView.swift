//
//  ListingView.swift
//  Yapper
//
//  Created by Aarush Kamat on 6/28/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    var body: some View {
        VStack(spacing: 8){
            // images
            
            ListingImageCaresellVIew()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //listing details
            
            
            HStack(alignment: .top){
                //details
                VStack {
                    Text("Miami Florida, Architect designed A Frame eco-cabin KINDRED")
                        .fontWeight(.bold).foregroundColor(.black
                        )
                    Text("12 miles away ")
                        .foregroundStyle(.gray)
                    Text("nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4.0) {
                        Text("$500")
                            .fontWeight(.bold)
                        Text("per night")
                    }
                    .foregroundStyle(.black)                }
                
                Spacer()
                
                //rating
                HStack(spacing:2){
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text("4/5")
                        .foregroundColor(.black
                        )
                }
                .foregroundColor(.black
                )
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
