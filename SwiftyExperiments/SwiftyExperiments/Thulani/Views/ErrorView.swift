//
//  ErrorView.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import SwiftUI

struct ErrorView: View {
    var errorMessage: String
    
    var body: some View {
        Text(errorMessage)
            .tracking(-0.5)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
            .autocapitalization(.allCharacters)
            .padding()
    }
}

// MARK: - Preview Error
struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(errorMessage: "Something wrong...")
    }
}
