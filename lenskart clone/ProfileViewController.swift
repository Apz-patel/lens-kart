
//  ProfileViewController.swift
//  lenskart clone
//  Created by Ayush Patel on 27/02/23.
import UIKit
class ProfileViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var arrProfileSettings: [String] = ["Orders","Unlock Gold & Special Offers","Address","Wallet","Saved Powers","Connect & Earn","Contact Us","FAQs","About Us","Advanced Options"]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXibFile()
    }
    private func registerXibFile(){
        tableView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
    }
}
extension ProfileViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProfileSettings.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        cell.nameLabel.text = arrProfileSettings[indexPath.row]
        return cell
    }
}
