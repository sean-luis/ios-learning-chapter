import Foundation
import SwiftUI

struct Announcement: Identifiable {
    let id = UUID()
    let imageName: String
    let date: String
    let title: String
    let message: String
}
