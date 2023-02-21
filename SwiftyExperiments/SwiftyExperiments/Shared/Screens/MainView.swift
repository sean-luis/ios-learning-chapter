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
                .navigationTitle(navigationViewTitle)
            } //: NAVIGATION
        }
    }
}

// MARK: - Strings
extension MainView {
    var navigationViewTitle: String { "MAIN_VIEW_NAVIGATION_VIEW_TITLE".localized }
}

// MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
