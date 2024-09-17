//
//  ContentView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 16/09/2024.
//

import SwiftUI

struct HomeView: View {
    // Use a state object as the single source of truth for a reference type that you store in a view hierarchy
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //Top movers view
                TopMoversView()
                
                Divider()
                
                
                //All coins view
                AllCoinsView()
               
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

