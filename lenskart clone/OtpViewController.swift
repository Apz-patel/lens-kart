
//  OtpViewController.swift
//  lenskart clone
//  Created by Ayush Patel on 17/02/23.
import UIKit

class OtpViewController: UIViewController {
    @IBOutlet weak var skip: UIButton!
    @IBOutlet weak var VerifyNumber: UIButton!
    @IBOutlet weak var enterOtp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func skipButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TabbarViewController: TabbarViewController = storyBoard.instantiateViewController(withIdentifier: "TabbarViewController") as! TabbarViewController
        self.navigationController?.pushViewController(TabbarViewController, animated: true)
    }
    @IBAction func verifyNumber(_ sender: UIButton) {
        if enterOtp.text == " "
                {
                    displayAlert(message: "Enter Email And Password")
                }
                else if enterOtp.text?.count ?? 0 < 4
                {
                        displayAlert(message: " Enter Valid Otp ")
                }
            func displayAlert(message: String){
                let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                let okButton: UIAlertAction = UIAlertAction(title: "ok", style: .default) { button in
                    print("Oky Button tapped")
                }
                alert.addAction(okButton)
                present(alert, animated: true, completion: nil)
            }
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TabbarViewController: TabbarViewController = storyBoard.instantiateViewController(withIdentifier: "TabbarViewController") as! TabbarViewController
        self.navigationController?.pushViewController(TabbarViewController, animated: true)
    }
}
