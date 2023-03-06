//
//  UserView.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import SwiftUI
import Resolver

struct UserView: View {
    
    var userModel: UserViewModel
    
    var body: some View {
    
        HStack(){
            Text("\(userModel.name) \(userModel.username)").multilineTextAlignment(.leading)
        }.padding()
    }
}

// MARK: - Preview Error
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(userModel: UserViewModel(user: User(id: 1, name: "John", username: "Doe")))
    }
}
