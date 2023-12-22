//
//  ObpViewController.swift
//  ObpHesaplama
//
//  Created by ALP on 21.12.2023.
//

import UIKit

class ObpViewController: UIViewController {
    @IBOutlet weak var obpText: UILabel!
    @IBOutlet weak var w: UILabel!
    @IBOutlet weak var fifteen: UILabel!
    var obp:String?
    var two:String?
    var fift:String?
    @IBOutlet weak var twoObpText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 500 Üzerinden Obp Text
        obpText.text = String(obp!)
        // 500 Üzerinden Obp Text
        twoObpText.text = String(two!)
        fifteen.text = String(fift!)
    }
    

 

}
