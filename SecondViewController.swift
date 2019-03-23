
import UIKit

class SecondViewController: UIViewController {
    
    // MARK: update App, make share (now hidden)
    
    var bgColor = UIColor()
    
    var textColor = UIColor()
    
    let yesNo = ["YES", "NO"]
    
    @IBOutlet weak var labelFromTextField: UILabel!
    
    @IBOutlet weak var labelAnswer: UILabel!
    
    @IBOutlet weak var shareOutlet: UIButton!
    
    @IBAction func shareAction(_ sender: UIButton) {
        
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        
    }
    
    
    @IBOutlet weak var backOutlet: UIButton!
    
    var myString = String()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        elementColors()
        
        autoResizing()
    }

    func autoResizing() {
        
        labelFromTextField.adjustsFontSizeToFitWidth = true
        
    }
  
    func elementColors() {
        
        labelFromTextField.text = myString
    
        labelAnswer.text = yesNo.randomElement()
     
        view.backgroundColor = bgColor
        
        labelAnswer.textColor = textColor
        
        labelFromTextField.textColor = textColor
        
        backOutlet.tintColor = textColor
        
        shareOutlet.tintColor = textColor
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }

}


