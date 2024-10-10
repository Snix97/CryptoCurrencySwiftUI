//
//  TopMoversItemView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 16/09/2024.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {

            //Coin Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 6)
            
            HStack(spacing: 2) {
                //Coin info
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$250,000")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            //Coin percent change
            Text("+ 15.29%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.systemGray5), lineWidth: 2)
            .shadow(/*color:.black,*/ radius: 10)
            )
        
    }
}

#Preview {
    TopMoversItemView()
}
