//
//  ApiViewControler.swift
//  lenskart clone 123
//
//  Created by Ayush Patel on 27/03/23.
//

import UIKit
import Alamofire
class ApiViewControler: UIViewController {
    var arrDetails:[StudentProfile] = []
    override func viewDidLoad() {
        super.viewDidLoad()
 apicalling()
      
    }
    func apicalling (){
        AF.request("https://gorest.co.in/public/v2/users",method: .get).responseData  {response in
            debugPrint("response\(response)")
            guard let api = response.data else { return }
            do {
                self.arrDetails = try JSONDecoder().decode([StudentProfile].self, from: api)
                print(self.arrDetails)
                print("succeful")
            }catch{
                print("error")
            }
}
    }

  
//}
//extension ViewController : UITableViewDelegate,UITableViewDataSource{
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arrDetails.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }


}
struct StudentProfile:Decodable{
    var id : Double
    var name : String
    var email : String
    var gender : String
    var status : String
}
