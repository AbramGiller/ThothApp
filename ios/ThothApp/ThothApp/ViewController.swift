import UIKit

class ViewController: UIViewController {

    // Declare UI elements
    var textView: UILabel!
    var loadButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        // Initialize the UILabel
        textView = UILabel(frame: CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 300))
        textView.numberOfLines = 0
        textView.textAlignment = .center
        textView.text = "Hello, World!"
        view.addSubview(textView)

        // Initialize the UIButton
        loadButton = UIButton(frame: CGRect(x: 20, y: 420, width: view.frame.width - 40, height: 50))
        loadButton.setTitle("Load Text", for: .normal)
        loadButton.backgroundColor = .blue
        loadButton.addTarget(self, action: #selector(loadText), for: .touchUpInside)
        view.addSubview(loadButton)
    }

    @objc func loadText() {
        // Here you could add functionality to load text from a file or another source
        textView.text = "Sample text loaded!"
    }
}
