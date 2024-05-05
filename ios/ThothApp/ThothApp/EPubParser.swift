import Foundation
import ZIPFoundation
import AEXML

struct EPubParser {
    static func parseEPub(at path: URL) -> Book? {
        do {
            let fileManager = FileManager.default
            let documentsURL = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let destinationURL = documentsURL.appendingPathComponent(path.lastPathComponent)

            // Clear existing contents if necessary
            if fileManager.fileExists(atPath: destinationURL.path) {
                try fileManager.removeItem(at: destinationURL)
            }

            try fileManager.unzipItem(at: path, to: destinationURL)

            let opfPath = destinationURL.appendingPathComponent("OEBPS/content.opf")  // Ensure this path is correct
            let opfData = try Data(contentsOf: opfPath)
            let opfDoc = try AEXMLDocument(xml: opfData)
            let title = opfDoc.root["metadata"]["dc:title"].value ?? "Unknown Title"
            let content = "Extracted Content Placeholder"

            return Book(title: title, content: content)
        } catch {
            print("Error parsing ePub: \(error)")
            return nil
        }
    }
}
