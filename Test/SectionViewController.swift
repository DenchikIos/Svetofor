
import UIKit

class SectionViewController: UIView {
    
    var colorLight: UIColor
    
    init(colorLight: UIColor) {
        self.colorLight = colorLight
        super.init(frame: .zero)
        
        setapView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setapView() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .clear
        layer.cornerRadius = 50
        layer.borderWidth = 3
        layer.borderColor = UIColor.black.cgColor
    }
    
    
    func turnOff() {
        backgroundColor = .clear
    }
    
    
    func turnOn() {
        backgroundColor = colorLight
    }

    
    func isOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
    }
    
    
    func isOn() -> Bool {
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
    }
}
