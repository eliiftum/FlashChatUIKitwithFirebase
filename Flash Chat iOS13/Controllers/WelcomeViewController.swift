//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//Created by Elif Tum on 26.03.2023.
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
          titleLabel.text = ""
          var charIndex = 0.0
        let titleText = Constansts.appName
          for letter in titleText {
              Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false){
              (timer) in
                  self.titleLabel.text?.append(letter)
              }
     charIndex += 1
         }
        
       // titleLabel.text = "⚡️FlashChat"
        //CLTyping kullandığımızda yazdığımız tek satırlık kod yukarıdaki kodları karşılar
       
    }
    

}
