import SwiftUI
import Utilities

struct AnnouncementCardDetailView: View {
    // MARK: - Properties
    let announcement: Announcement
    
    // MARK: - Content
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                //: Announcement Image
                if let imageName = announcement.imageName {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210,
                               height: 116,
                               alignment: .center)
                        .padding(.top, 15)
                        .padding(.bottom, 15)
                }
                
                VStack {
                    //: Announcement Date
                    Text(announcement.date)
                        .font(.regular13)
                        .foregroundColor(.charcoalGrey)
                        .lineLimit(1)
                        .padding(.bottom, 5)
                    
                    //: Announcement Title
                    Text(announcement.title)
                        .font(.regular17)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.bottom, 5)
                    
                    //: Announcement Description
                    Text(announcement.message)
                        .font(.regular15)
                        .foregroundColor(.charcoalGrey)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.bottom, 15)
                } //: VSTACK
                .padding(15)
                
                //: Learn more button
                Button {
                    print("I was tapped!")
                } label: {
                    Text(learnMoreButtonTitle)
                        .font(.regular17)
                        .foregroundColor(.primaryColor)
                }
                .padding(.bottom, 21)
            } //: VStack
        } // ZStack
        .background(Color.cardGrey.edgesIgnoringSafeArea(.all))
    }
}

// MARK: - Strings
extension AnnouncementCardDetailView {
    var learnMoreButtonTitle: String { "LEARN_MORE_BUTTON_TITLE".localized }
}

// MARK: - Preview
struct AnnouncementCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementCardDetailView(announcement: announcementData[2])
            .previewLayout(.sizeThatFits)
    }
}
