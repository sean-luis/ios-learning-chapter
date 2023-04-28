import SwiftUI
import Utilities

struct AnnouncementHeaderView: View {
    // MARK: - Properties
    
    // MARK: - Content
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Image("whatsNew")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210,
                       height: 116,
                       alignment: .center)
            Text("What's new in this app")
                .font(.regular17)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
        }
    }
}

// MARK: - Preview
struct AnnouncementHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementHeaderView().previewLayout(.sizeThatFits)
    }
}
