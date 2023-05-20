//
//  loginpage.swift
//  myntra
//
//  Created by R92 on 22/04/23.
//

import UIKit

class loginpage: UIViewController {

    @IBOutlet weak var mobilenumberTextFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! otpPage
        abc.a1 = mobilenumberTextFeild.text!
    }
   
    @IBAction func continueButtonAction(_ sender: Any) {
        if mobilenumberTextFeild.text?.count ?? 0 != 10
        {
            showaelrt()
        }
     savealert()
        }
    func savealert()
    {
        
        let alert = UIAlertController(title: "SAVE", message: "Please enter Your 10 Digit Number.", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.mobilenumberTextFeild.text!, forKey: "Sent via SMS to")
            self .performSegue(withIdentifier: "cell", sender: self)
            
        }  ))
        present(alert, animated: true, completion: nil)

        
    }
    func showaelrt()
    {
        
            let alert = UIAlertController(title: "Error", message: "Please enter Your 10 Digit Number.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
    }
  
    }
    
   

