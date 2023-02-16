import SwiftUI

struct AccouncementCardDetailView: View {
    // MARK: - Properties
    let announcement: Announcement
    
    // MARK: - Content
    var body: some View {
        ZStack {
            Color.cardGrey.ignoresSafeArea()
            
            VStack(alignment: .center) {
                //: Announcement Image
                Image(announcement.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210,
                           height: 116,
                           alignment: .center)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                
                Group {
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
                } //: Group
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
                //: Learn more button
                Button {
                    print("I was tapped!")
                } label: {
                    Text("Learn more")
                        .font(.regular17)
                        .foregroundColor(.primaryColor)
                }
                .padding(.bottom, 21)
            } //: VStack
        } // ZStack
        .background(Color.cardGrey.edgesIgnoringSafeArea(.all))
    }
}

// MARK: - Preview
struct AccouncementCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccouncementCardDetailView(announcement: announcementData[2])
            .previewLayout(.sizeThatFits)
    }
}
