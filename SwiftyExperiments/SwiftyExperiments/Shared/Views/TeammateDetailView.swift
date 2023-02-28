import SwiftUI

struct TeammateDetailView<Content: View>: View {
    let content: (() -> Content)?
    
    init(content: @escaping () -> Content) {
        self.content = content
    }

    // MARK: - Body
    var body: some View {
        content?()
    }
}

// MARK: - PREVIEW
struct TeammateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TeammateDetailView(content: { Text("Hello, world!") })
    }
}
