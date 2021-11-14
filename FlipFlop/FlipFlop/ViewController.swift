//
//  ViewController.swift
//  FlipFlop
//
//  Created by Veronika Sazonova on 14.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    var touches = 0 {
        didSet {
            touchLable.text = "Touches: \(touches)"
        }
    }
    
    func flipButton (emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        }else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }

   let emojiCollection = ["🖕🏻","🙏🏻","🖕🏻","🙏🏻"]
    
    @IBOutlet weak var touchLable: UILabel!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
    
}


