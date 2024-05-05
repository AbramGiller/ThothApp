import SwiftUI

struct ContentView: View {
    @State private var documentURL: URL?
    @State private var book: Book? // Ensure you have a Book model defined
    @State private var showingDocumentPicker = false

    var body: some View {
        NavigationView {
            VStack {
                Button("Load ePub") {
                    showingDocumentPicker = true
                }
                .sheet(isPresented: $showingDocumentPicker) {
                    // Assuming DocumentPicker is a SwiftUI view that you've set up to handle file selection
                    DocumentPicker(document: $documentURL)
                }

                if let documentURL = documentURL {
                    Button("Open Book") {
                        // Attempt to parse the book and print a debug message
                        book = EPubParser.parseEPub(at: documentURL)
                        print("Book loaded: \(book?.title ?? "Unknown")")
                    }
                }

                if let book = book {
                    ScrollView {
                        Text(book.title)
                            .font(.title)
                        Text(book.content)
                            .padding()
                    }
                }
            }
            .navigationTitle("ThothApp")
        }
    }
}
