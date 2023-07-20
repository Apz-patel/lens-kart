//
//  FavoutiteViewController.swift
//  lenskart clone
//
//  Created by Ayush Patel on 22/02/23.
//

import UIKit

class FavoutiteViewController: UIViewController {

    @IBOutlet weak var continueShopping: UIButton!
    @IBOutlet weak var buyOnChat: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func buyOnChatButton(_ sender: Any) {
    }
    @IBAction func continueShoppingButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TabbarViewController: TabbarViewController = storyBoard.instantiateViewController(withIdentifier: "TabbarViewController") as! TabbarViewController
        self.navigationController?.pushViewController(TabbarViewController, animated: true)

    }
}
