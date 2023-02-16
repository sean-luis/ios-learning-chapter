import SwiftUI

struct MainView: View {
    // MARK: - Properties
    var teammates: [Teammate] = teammatesData
    
    // MARK: - Content
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(teammates.shuffled()) { teammate in
                        NavigationLink(destination: TeammateDetailView()) {
                            TeammateRowView(teammate: teammate).padding(.vertical, 4)
                        }
                    }
                }
                .navigationTitle("Teammates")
            } //: NAVIGATION
        }
    }
}

// MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
