import SwiftUI

public struct EddisonLandingView: View {
    public init() {}
        
    // MARK: - Content
    public var body: some View {
        List {
            NavigationLink(destination: AnnouncementLandingView(), label: {
                Text("App Announcements")
            })
        } // LIST
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle("Features", displayMode: .inline)
    }
}

// MARK: - Preview
struct EddisonLandingView_Previews: PreviewProvider {
    static var previews: some View {
        EddisonLandingView()
    }
}
