//
//  SearchAndFilterBar.swift
//  Yapper
//
//  Created by Aarush Kamat on 6/29/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment:.leading, spacing: 2){
                Text("Enter Destintion")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any Week - Add Guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray))
                    .shadow(color: .black.opacity(0.4), radius:2)
            }
            .padding()
            }
        }
    


#Preview {
    SearchAndFilterBar()
}
