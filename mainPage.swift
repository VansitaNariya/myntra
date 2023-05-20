//
//  mainPage.swift
//  myntra
//
//  Created by R92 on 01/01/24.
//

import UIKit

class mainPage: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var mobileNumber: UITextField!
    @IBOutlet weak var hintName: UITextField!
    @IBOutlet weak var fM1: UIButton!
    @IBOutlet weak var m1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func creatButtonAction(_ sender: UIButton) {
      if fullName.text == "" && email.text == "" && mobileNumber.text  == "" && hintName.text  == ""
        {
            let alert = UIAlertController(title: "Error", message: "Please fill every Details.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        else if fullName.text == "" {
            
                let alert = UIAlertController(title: "Error", message: "Please Enter your full Name.", preferredStyle: .alert)
                alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
                alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
                present(alert,animated: true,completion: nil)
        }
        else if email.text == "" {
            
                let alert = UIAlertController(title: "Error", message: "Please Enter your Email Address.", preferredStyle: .alert)
                alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
                alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
                present(alert,animated: true,completion: nil)
        }
        else if mobileNumber.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter your Mobile Number.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        else if hintName.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter your Hint Name .", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        
        }
        naviget()
        
    }
    @IBAction func femail(_ sender: Any) {
        fM1.backgroundColor = UIColor.systemPink
        m1.backgroundColor = UIColor.systemGray

    }
    
    @IBAction func mail(_ sender: Any) {
        fM1.backgroundColor = UIColor.systemGray
        m1.backgroundColor = UIColor.systemPink

    }
    func naviget() {
        let fashionPage = storyboard? .instantiateViewController(withIdentifier: "tabbarController") as! tabbarController
        navigationController?.pushViewController(fashionPage, animated: true)
    }
}
