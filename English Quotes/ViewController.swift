//
//  ViewController.swift
//  English Quotes
//
//  Created by HEMANG N TALAVIYA on 18/08/19.
//  Copyright © 2019 Hemang. All rights reserved.
//

import UIKit
class tblcell : UITableViewCell {
   
    @IBOutlet weak var objlblHeaderName: UILabel!
    @IBOutlet weak var objMainView: UIView!
    
}

class ViewController: UIViewController {
    @IBOutlet weak var objHeaderView: UIView!
    @IBOutlet weak var objlblHeader: UILabel!
    @IBOutlet weak var objtblView: UITableView!
//    207 199 162
    var  arrHomeList = [["name": "Anniversary"],["name": "Awesome"],["name": "Best"],["name": "ChildHood"], ["name": "Clever"],["name": "Cool"],["name": "Emotional"],["name": "Friends"],["name": "Flirt"], ["name": "Funny"], ["name": "Jealous"]]
    let colorTop =  UIColor(red: 207/255.0, green: 199/255.0, blue: 162/255.0, alpha: 1.0).cgColor
    let colorBottom = UIColor(red: 249/255.0, green: 223/255.0, blue: 224/255.0, alpha: 1.0).cgColor
    override func viewDidLoad() {
        super.viewDidLoad()
         gradientLayer()
    }
    func gradientLayer(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = objHeaderView.bounds
        objHeaderView.layer.insertSublayer(gradientLayer, at:0)
    }
}
//MARK: table view Delegate
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrHomeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = objtblView.dequeueReusableCell(withIdentifier: "tblcell", for: indexPath) as! tblcell
        cell.objlblHeaderName.text = arrHomeList[indexPath.row]["name"]
        cell.selectionStyle = .none
        cell.objMainView.layer.shadowColor = UIColor.black.cgColor
        cell.objMainView.layer.shadowOffset = CGSize(width: 3, height: 6)
        cell.objMainView.layer.shadowOpacity = 0.7
        cell.objMainView.layer.shadowRadius = 4.0
  
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "QuotesDetailsVC") as? QuotesDetailsVC
        vc!.strName = arrHomeList[indexPath.row]["name"]!
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
