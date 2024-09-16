//
//  ContentView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 16/09/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //Top movers view
                Text("Hello")
                
                //All coins view
                
            }
            .navigationTitle("Live Prices")
        }
        .foregroundColor(.black)
    }
}


#Preview {
    HomeView()
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

