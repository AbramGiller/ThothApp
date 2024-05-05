import SwiftUI

struct LibraryView: View {
    let books: [Book]

    var body: some View {
        NavigationView {
            List(books, id: \.id) { book in
                NavigationLink(destination: ReaderView(book: book)) {
                    Text(book.title)
                }
            }
            .navigationTitle("Library")
        }
    }
}
