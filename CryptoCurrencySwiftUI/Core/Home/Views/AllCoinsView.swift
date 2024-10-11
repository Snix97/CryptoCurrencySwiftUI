//
//  AllCoinsView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 17/09/2024.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            VStack {
                HStack {
                    Text("Coin")
                    Spacer()
                    Text("Prices")
                }
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.horizontal)
                
                ScrollView {
                    VStack(spacing: 16){
//                        ForEach(0 ..< 50, id:\.self) { _ in
//                            AllCoinsCellView()
//                        }
                        
                        ForEach(viewModel.coins) { coin in
                            AllCoinsCellView(coin: coin)
                        }
                    }
                }
            }
        }
        
        
        
    }
}

#Preview {
    AllCoinsView(viewModel: HomeViewModel())
}
