//
//  ContentView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 16/09/2024.
//

import SwiftUI

struct HomeView: View {
    // Use a state object as the single source of truth for a reference type that you store in a view hierarchy. VM changes trigger updates to UI
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //Top movers view
                TopMoversView()
                
                Divider()
                
                
                //All coins view
                AllCoinsView(viewModel: viewModel)
               
            }
            .navigationTitle("Live Prices")
        }
        .foregroundColor(.black)
    }
}


//#Preview {
//    HomeView()
//}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

/*
 @ObservedObject and @StateObject property wrappers require your object to conform to the ObservableObject protocol. This protocol stands for an object with a publisher that emits before the object has changed and allows you to tell SwiftUI to trigger a view redraw
 
 The state object makes sure the view model retains between view redraws. @StateObject wrapper to ensure consistent results after a view redraw.
 
 @StateObject and @ObservedObject have similar characteristics but differ in how SwiftUI manages their lifecycle. Use the state object property wrapper to ensure consistent results when the current view creates the observed object. Whenever you inject an observed object as a dependency, you can use the @ObservedObject.
 */
