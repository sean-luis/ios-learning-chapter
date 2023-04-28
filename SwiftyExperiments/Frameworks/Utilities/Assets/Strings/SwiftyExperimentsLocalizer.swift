import Foundation

public class SwiftyExperimentsLocalizer {
    static let shared = SwiftyExperimentsLocalizer()
    
    private let bundle = Bundle(for: SwiftyExperimentsLocalizer.self)
    private let table = "SwiftyExperiments"
    
    func localizedString(forKey key: String) -> String {
        let string = bundle.localizedString(forKey: key, value: nil, table: table)
        
        if string.isEmpty || string == key {
            NSLog("You have not localised the following string value for key: \(key). Please add it to the string table: \(table)")
            return string
        }
        return string
    }
}
