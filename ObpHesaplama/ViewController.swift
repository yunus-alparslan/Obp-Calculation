//
//  ViewController.swift
//  ObpHesaplama
//
//  Created by ALP on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var obpTextField: UITextField!
    
    @IBOutlet weak var obpTextLabel: UILabel!
    @IBOutlet weak var sliderObp: UISlider!
    
    @IBOutlet weak var mezunObpButto: UISwitch!
    
    var calc = Calculated()
    var vrb = veriables()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        obpTextField.placeholder = "Obp Giriniz"
        
    }

    @IBAction func textField(_ sender: UITextField) {
        obpTextLabel.text = obpTextField.text
    }
    
    @IBAction func actionPressed(_ sender: UIButton) {
        
        vrb.outfivehundred  = Double(obpTextField.text!)
        
        
        if obpTextField.text == ""{
            vrb.outfivehundred  = 50
            obpTextField.text = "50"
        }
        else{
            vrb.outfivehundred  = 50
            obpTextField.text = "50"
        }
        
        if mezunObpButto.isOn{
            // 500 Üzerinden Obp Hesaplama
            vrb.outfivehundred = calc.calculted(obp: (vrb.outfivehundred!), calculted: 5)
            // 500 Üzerinden Obp Hesaplama
            
            // 0.12 Obp Calculated
            vrb.twelve = calc.calculted(obp: (vrb.outfivehundred!), calculted: 0.06)
            // 0.12 Obp Calculated
           
            // 0.18 Obp Calculated Ek
            vrb.fifteen = Int(calc.calculted(obp: (vrb.outfivehundred!), calculted: (0.09)))
            // 0.18 Obp Calculated Ek
            
        }
        else {
            
            // 0.12 Obp Calculated
            vrb.twelve = calc.calculted(obp: (vrb.outfivehundred!), calculted: 5 * (0.12))
            // 0.12 Obp Calculated
           
            // 0.18 Obp Calculated Ek
            vrb.fifteen = Int(calc.calculted(obp: (vrb.outfivehundred!), calculted: 5 * (0.18)))
            // 0.18 Obp Calculated Ek
            
            // 500 Üzerinden Obp Hesaplama
            vrb.outfivehundred = calc.calculted(obp: (vrb.outfivehundred!), calculted: 5)
            // 500 Üzerinden Obp Hesaplama
        }
        

        
        //GotoObpView
        performSegue(withIdentifier: "gotoHesap", sender: self)
        //GotoObpView
        
    }
    
    @IBAction func sliderValueObp(_ sender: UISlider) {
        obpTextLabel.text = String(format: "%.0f", sliderObp.value)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "gotoHesap"{
            print("geçişok")
            if let verimbenim = segue.destination as? ObpViewController {
                verimbenim.obp =  String(vrb.outfivehundred!)
                verimbenim.two = String(vrb.twelve!)
                verimbenim.fift = String(vrb.fifteen!)
            }
            
        }
        
        
    }
}

