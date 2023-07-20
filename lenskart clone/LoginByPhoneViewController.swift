
//  LoginByPhoneViewController.swift
//  lenskart clone
//  Created by Ayush Patel on 17/02/23.
import UIKit

class LoginByPhoneViewController: UIViewController {
    @IBOutlet weak var `continue`: UIButton!
    @IBOutlet weak var enterNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func continueButton(_ sender: Any) {
        if enterNumber.text == " "
                {
                    displayAlert(message: "Enter Email And Password")
                }
                else if enterNumber.text?.count ?? 0 < 10 
                {
                        displayAlert(message: "Enter Valid Phone Number ")
                }
            func displayAlert(message: String){
                let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                let okButton: UIAlertAction = UIAlertAction(title: "ok", style: .default) { button in
                    print("Oky Button Tapped")
                }
                alert.addAction(okButton)
                present(alert, animated: true, completion: nil)
            }
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let OtpViewController: OtpViewController = storyBoard.instantiateViewController(withIdentifier: "OtpViewController") as! OtpViewController
        self.navigationController?.pushViewController(OtpViewController, animated: true)
    }
}
