
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // var bgColor = UIColor()

    //var textColor = UIColor()

    @IBAction func askBAction(_ sender: UIButton) {
        
        alertController()
    }
    
    @IBOutlet weak var askBOutlet: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var settingsButtonOutlet: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func settingsButton(_ sender: UIButton) {

        colorsCheck()
        
        //  checkTFAndUseSegue()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.textField.delegate = self
        /*
         
         view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
         
         label.textColor = UIColor.white
         
         settingsButtonOutlet.tintColor = UIColor.white
         
         askBOutlet.titleLabel?.textColor = UIColor.white
         
         */
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        askBOutlet.accessibilityActivate()
        
        return true
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // кастомизация
    
    func colorsCheck()  {
    
        if view.backgroundColor == UIColor.white {
            
            view.backgroundColor =  #colorLiteral(red: 0, green: 0.4367694855, blue: 0.4325060546, alpha: 1)
            
            label.textColor = UIColor.white
            
            settingsButtonOutlet.tintColor = UIColor.white
            
            askBOutlet.titleLabel?.textColor = UIColor.white
            
        } else if view.backgroundColor ==  #colorLiteral(red: 0, green: 0.4367694855, blue: 0.4325060546, alpha: 1) {
            
            view.backgroundColor =  #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            
            // askBOutlet.titleLabel?.textColor = UIColor.white
            
        } else if view.backgroundColor ==  #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) {
            
            view.backgroundColor =  #colorLiteral(red: 0.8905699253, green: 0.5546572804, blue: 0.451649785, alpha: 1)
            
            askBOutlet.titleLabel?.textColor = UIColor.white
            
        } else if view.backgroundColor == #colorLiteral(red: 0.8905699253, green: 0.5546572804, blue: 0.451649785, alpha: 1)  {
            
            view.backgroundColor = UIColor.white
            
            label.textColor = UIColor.black
            
            settingsButtonOutlet.tintColor = UIColor.black
            
            askBOutlet.tintColor = UIColor.black
            
            askBOutlet.titleLabel?.textColor = UIColor.black
            
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
        let dvc = segue.destination as! SecondViewController
        
        if textField.text != "" {
            
            // передача текста лейблу второго вьюконтроллера
            
            dvc.myString = textField.text!
            
            // передача цвета вью второму вью контроллеру
            
            dvc.bgColor = view.backgroundColor!
            
            dvc.textColor = label.textColor
            
        } else {
 
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // Проверка на заполняемость поля и алерт, если не заполнено
    
    func alertController() {
        if textField.text == "" {

            let alertController = UIAlertController(title: "The field is empty", message: "Please, enter text in the field", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(action)
            present(alertController, animated: true)
        }
    }
    
    // проверка на заполненнность и переход по сегвыю
    func checkTFAndUseSegue() {
        if textField.text != "" {
            performSegue(withIdentifier: "segue", sender: self)
        }
        
    }

}

