extension String {
    var localized: String {
        SwiftyExperimentsLocalizer.shared.localizedString(forKey: self)
    }
}
