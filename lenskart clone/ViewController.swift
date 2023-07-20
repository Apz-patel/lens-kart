
//  ViewController.swift
//  lenskart clone
//  Created by Ayush Patel on 17/02/23.

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var loginByPhone: UIButton!
    @IBOutlet weak var whatsaap: UILabel!
    @IBOutlet weak var loginVia: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        whatsaap.layer.borderWidth = 1
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginByPhoneViewController: LoginByPhoneViewController = storyBoard.instantiateViewController(withIdentifier: "LoginByPhoneViewController") as! LoginByPhoneViewController
        self.navigationController?.pushViewController(LoginByPhoneViewController, animated: true)
    }
}
