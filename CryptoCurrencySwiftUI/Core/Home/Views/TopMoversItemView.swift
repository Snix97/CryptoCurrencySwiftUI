//
//  TopMoversItemView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 16/09/2024.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    
    //Progamatically change text for dark/lightMode support
    @Environment(\.colorScheme) var colorScheme
    
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {

            //Coin Image
            KFImage(URL(string:  coin.image!))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 6)
            
            HStack(spacing: 2) {
                //Coin info
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(coin.priceChange24H > 0 ? .green : .red)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            
            //Coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.systemGray5), lineWidth: 2)
            .shadow(radius: 10)
            )
        
    }
}


// Don't habe mock data so removed preview
//#Preview {
//    TopMoversItemView()
//}
