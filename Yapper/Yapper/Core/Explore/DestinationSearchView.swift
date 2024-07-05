//
//  DestinationSearchView.swift
//  Yapper
//
//  Created by Aarush Kamat on 6/30/24.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOpton: DestinationSearchOptions = .location
    var body: some View {
        VStack{
            
            Button{
                show.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            VStack(alignment:.leading){
                if selectedOpton == .location{
                    Text("Where to?")
                        .font(.title2)
                    .fontWeight(.semibold)}
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search Destinations", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 45)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
                
            }}; else {
                CollapsedPickerView(title: "where", description: "Add Destination")
              }
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 50)
                .onTapGesture {
                    selectedOpton = .location
                }
                // MARK: date selection view
                CollapesedPickerView(title: "When", description: "Add Dates")
                    .onTapGesture {
                        selectedOpton = .dates
                    }
                //MARK: num guest view
                CollapesedPickerView(title: "Who", description: "Add Guests")
                    .onTapGesture {
                        selectedOpton = .guests
                    }
            }
        }
    


#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapesedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
                    .fontWeight(.semibold)
                    .font(.subheadline)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            
        }
    }
}
