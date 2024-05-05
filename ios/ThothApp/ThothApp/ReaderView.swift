import SwiftUI

struct ReaderView: View {
    var book: Book
    @State private var selectedText: String = ""

    var body: some View {
        Text(book.content)
            .padding()
            .contextMenu {
                Button("Copy", action: copyText)
                Button("Catch Me Up", action: catchMeUp)
            }
            .onAppear {
                // Initially, set the selected text to a default value or handle it dynamically
                self.selectedText = "Some default text if needed"
            }
    }

    private func copyText() {
        UIPasteboard.general.string = selectedText
    }

    private func catchMeUp() {
        print("Querying LLM with selected text: \(selectedText)")
        // Call your LLM API or server with the selectedText
    }
}
