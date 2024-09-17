//
//  AllCoinsCellView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 17/09/2024.
//

import SwiftUI

struct AllCoinsCellView: View {
    var body: some View {
        HStack{
            //Market cap rnk
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            
            //Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //Coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                //Coin price info
                Text("BTC")
                    .font(.subheadline)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            //Coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text("$500")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                //Coin price info
                Text("-5.60 %")
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

#Preview {
    AllCoinsCellView()
}
