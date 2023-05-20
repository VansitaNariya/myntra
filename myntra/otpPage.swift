//
//  otpPage.swift
//  myntra
//
//  Created by R92 on 24/04/23.
//

import UIKit

class otpPage: UIViewController {
    var a1 : String = ""
    @IBOutlet weak var savenumberTextFeild: UITextField!
    @IBOutlet weak var otplabel: UILabel!
    @IBOutlet weak var otpView: DPOTPView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        savenumberTextFeild.text = a1
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if otpView.text == ""{
            let alert = UIAlertController(title: "Error", message: "Please enter Your OTP Number.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
      
        naviget()
    }
    
    func naviget(){
        let fashionPage = storyboard? .instantiateViewController(withIdentifier: "tabbarController") as! tabbarController
        navigationController?.pushViewController(fashionPage, animated: true)
    }
}
