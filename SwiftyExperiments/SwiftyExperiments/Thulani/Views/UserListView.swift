//
//  UserListView.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//
import SwiftUI
import Resolver


struct UserListView: View {
    
    @ObservedObject var userListViewModel: UserListViewModel = Resolver.resolve() //Uses the Service locator Pattern since we already have an annotation at the begining
    
    var body: some View {
        switch userListViewModel.state {
        case .idle:
            Color.charcoalGrey.onAppear{
                userListViewModel.fetchUsers()
            }
        case .loading:
            ProgressView("Fetching Users ...")
        case .failed(let error):
            ErrorView(errorMessage: error.description)
        case .loaded(let users):
            NavigationView{
                ScrollView{
                    ForEach(users) { user in
                        UserView(userModel: Resolver.resolve(args: user))
                    }
                    .padding()
                }
                .navigationTitle("Users")
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
