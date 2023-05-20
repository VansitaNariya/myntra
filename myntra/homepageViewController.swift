//
//  homepageViewController.swift
//  myntra
//
//  Created by R92 on 22/04/23.
//

import UIKit

class homepageViewController: UIViewController {

    @IBOutlet weak var homePageView: UIImageView!
    override func viewDidLoad() {
     super.viewDidLoad()

    }
    

    @IBAction func continueButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "mainPage") as! mainPage
      
              navigationController?.pushViewController(n, animated: true)
    }
    @IBAction func loginButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginpage = storyboard.instantiateViewController(withIdentifier: "loginpage") as! loginpage
        navigationController?.pushViewController(loginpage, animated: true)
    }
   
    
}
