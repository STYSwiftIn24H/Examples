protocol ButtonDelegateProtocol {
    func didTapButton(button: Button)
}

class ButtonDelegate : ButtonDelegateProtocol {
    func didTapButton(button: Button) {
        println("You tapped the button labeled \(button.title)")
    }
}

class Button {
    let title: String
    let delegate: ButtonDelegateProtocol
    
    init(title: String, delegate: ButtonDelegateProtocol) {
        self.title = title
        self.delegate = delegate
    }
    
    func buttonPressed() {
        self.delegate.didTapButton(self)  // `self.` is not necessary
    }
}

let button = Button(title: "Tap Me!", delegate: ButtonDelegate())
button.buttonPressed()
