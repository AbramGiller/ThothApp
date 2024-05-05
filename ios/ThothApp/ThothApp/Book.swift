import Foundation

struct Book: Identifiable, Hashable {
    var id: UUID = UUID()
    var title: String
    var content: String  // For simplicity, content is a plain text
}
