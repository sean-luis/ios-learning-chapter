import SwiftUI

struct TeammateRowView: View {
    // MARK: - Properties
    var teammate: Teammate
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(teammate.imageName)
            /// .renderingMode(.original) -> This will prevent the image being colourised by the system when adding this row to the list inside the navigational link.
            /// Our goal is to avoid the default system behaviour.
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .cornerRadius(8)
            VStack(alignment: .leading,
                   spacing: 5,
                   content: {
                Text(teammate.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(teammate.color)
            }) //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct TeammateRowView_Previews: PreviewProvider {
    static var previews: some View {
        TeammateRowView(teammate: teammatesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
