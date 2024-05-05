import SwiftUI

struct ContentView: View {
    var body: some View {
        LibraryView(books: sampleBooks())
    }

    private func sampleBooks() -> [Book] {
        [
            Book(title: "Book One", content: "This is the content of book one..."),
            Book(title: "Book Two", content: "This is the content of book two...")
        ]
    }
}
