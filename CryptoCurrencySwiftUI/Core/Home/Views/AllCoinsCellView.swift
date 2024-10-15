//
//  AllCoinsCellView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 17/09/2024.
//

import SwiftUI
import Kingfisher

struct AllCoinsCellView: View {
    let coin: Coin
    
    var body: some View {
        HStack{
            //Market cap rnk
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            //Image
            KFImage(URL(string:  coin.image!))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //Coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                //Coin price info
                Text(coin.symbol.uppercased())
                    .font(.subheadline)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            //Coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                //Coin price info
                Text("\(coin.priceChangePercentage24H)")
                    .font(.subheadline)
                    .padding(.leading, 6)
                    .foregroundColor(.red)
            }
            .padding(.leading, 2)
            
        }
        .padding(.vertical, 4)
        .padding(.horizontal)
        
    }
}

//#Preview {
//    AllCoinsCellView()
//}
