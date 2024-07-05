//
//  ListingDetailView.swift
//  Yapper
//
//  Created by Aarush Kamat on 6/29/24.
//

import SwiftUI
import MapKit
struct ListingDetailView: View {    var images = [
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4",
    
]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                ListingImageCaresellVIew()
                    .frame(height: 320)
                
                Button{
                    dismiss() 
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
                
            VStack(alignment: .leading, spacing: 4){
                Text("Miami House")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading)  {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4/5")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    Text("Miami Florida")

                }
                .font(.caption)

            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading )
            
            
            // hoster of house
            HStack{
                VStack (alignment: .leading){
                    Text("Miami House Hosted By John Smith")
                        .font(.headline)
                        .frame(width: 258, alignment: .leading)
                    
                    
                    HStack(spacing:2){
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 bathrooms - ")
                        Text("4 beds")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
            Image("profilepic-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //listing features
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2){feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        VStack(alignment:.leading){
                            Text("SuperHost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("SuperHosts Are highly experienced, highly rated hosts who are commited to provide great stays for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                }
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding()
            
            Divider()
            //bedrooms
            VStack(alignment:.leading, spacing: 1){
              Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal){
                    HStack(spacing:16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132,height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            // amenities
            Divider()
            VStack(alignment: .leading, spacing: 16){
                Text("Amenities")
                    .font(.headline)
                    Divider()
                
                ForEach(0 ..< 5){ feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            VStack(alignment: .leading, spacing: 16){
                Text("Exact location of this House")
                    .font(.headline)
                    
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("oct 15 - 20")
                            .underline()
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
        }
    }


#Preview {
    ListingDetailView()
}
