//
//  TopMoversView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 16/09/2024.
//

import SwiftUI

struct TopMoversView: View {
    
    //Get viewModel
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing: 16){
                    ForEach(0 ..< 5, id:\.self) { _ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
        
    }
}

#Preview {
    TopMoversView(viewModel: HomeViewModel())
}
