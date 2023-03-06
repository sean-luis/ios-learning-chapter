import SwiftUI
import Eddison

/*
  Important SwiftUI articles:
    https://medium.com/@omairahmedkhan/decoupling-the-navigation-logic-from-your-swiftui-views-883fab3c7518
    https://betterprogramming.pub/swiftui-navigationlink-does-what-67947249bd8c
    https://medium.com/swlh/deep-inside-views-state-and-performance-in-swiftui-d23a3a44b79
 */

struct MainView: View {
    // MARK: - Properties
    var teammates: [Teammate] = teammatesData
    
    // MARK: - Content
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(teammates.shuffled()) { teammate in
                        navigationLink(for: teammate)
                    }
                }
                .navigationTitle(navigationViewTitle)
            } //: NAVIGATION
        }
    }
    
    @ViewBuilder
    private func navigationLink(for teammate: Teammate) -> some View  {
        let rowView = TeammateRowView(teammate: teammate).padding(.vertical, 4)
        switch teammate.id {
        case .eddison:
            let detailView = TeammateDetailView { EddisonLandingView() }
            NavigationLink(destination: detailView, label: { rowView })
        default:
            let defaultDetailView = TeammateDetailView { Text(teammate.name) }
            NavigationLink(destination: defaultDetailView, label: { rowView })
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
