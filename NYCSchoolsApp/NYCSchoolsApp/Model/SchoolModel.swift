import Foundation

struct SchoolModel : Codable, Hashable {
    var dbn: String
    var school_name: String
    var overview_paragraph: String
    var neighborhood: String
    var phone_number: String
    var website: String
}
